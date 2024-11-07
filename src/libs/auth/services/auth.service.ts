import axios from "axios";
import jwt from "jsonwebtoken";
import authController from "../controller/auth.controller";

const client_id = process.env.CLIENT_ID!;
const client_secret = process.env.CLIENT_SECRET!;
const tenant_id = process.env.TENANT_ID!;
const url_auth = process.env.REDIRECT_URI!;
const scope = process.env.SCOPE!;
const JWT_SECRET = process.env.JWT_SECRET!;
const url_redirection = process.env.URL_BASE_TYPIFICATION!;

class AuthService {
  async getRedirectURI(): Promise<string> {
    return `https://login.microsoftonline.com/${tenant_id}/oauth2/v2.0/authorize?client_id=${client_id}&response_type=code&response_mode=query&state=12345&redirect_uri=${redirect_uri}&scope=offline_access%20user.read%20mail.read`;
  }

  async handleCallback(code: string) {
    const tokenResponse = await axios.post(
      `https://login.microsoftonline.com/${tenant_id}/oauth2/v2.0/token`,
      new URLSearchParams({
        client_id,
        scope,
        code,
        url_auth,
        grant_type: "authorization_code",
        client_secret,
      }),
      {
        headers: { "Content-Type": "application/x-www-form-urlencoded" },
      },
    );

    const access_token = tokenResponse.data.access_token;

    const dataProfileResponse = await axios.get(
      `https://graph.microsoft.com/v1.0/me`,
      {
        headers: { Authorization: `Bearer ${access_token}` },
      },
    );

    const { id, displayName: name, mail: email } = dataProfileResponse.data;
    const userData = { id, name, email };

    await authController.createIfNotExist(userData);

    const jwtToResponse = await jwt.sign({ data: userData }, JWT_SECRET);
    return {
      redirectUrl: `${url_redirection}/#/redirect?jwt=${jwtToResponse}&name=${name}&email=${email}`,
    };
  }

  async verifyToken(access_token: string) {
    try {
      const decoded = (await jwt.verify(access_token, JWT_SECRET)) as {
        data: { id: string; name: string; email: string; userActive?: number };
      };
      const { name, email, userActive } = decoded.data;

      if (userActive === 0) {
        return { validToken: false, name, email, userActive: false };
      }

      // const permissionsData = await authController.getActivedPermissions(id);
      // const permissions = permissionsData.map((el: { dataValues: { id_permissions: any; }; }) => el.dataValues.id_permissions);

      return { validToken: true, name, email, userActive: true };
    } catch (err) {
      throw new Error("Invalid token");
    }
  }
}

export default new AuthService();
