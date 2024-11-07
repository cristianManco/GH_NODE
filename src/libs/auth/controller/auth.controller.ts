import authService from "../services/auth.service";
import { Request, Response } from "express";

class AuthController {
  createIfNotExist(userData: { id: any; name: any; email: any }) {
    throw new Error("Method not implemented.");
  }

  async login(req: Request, res: Response): Promise<any> {
    const redirectURI = await authService.getRedirectURI();
    console.log(redirectURI);
    return await res.status(200).json({ url: redirectURI });
  }

  async callback(req: Request, res: Response) {
    const code = req.query.code as string;

    if (!code) {
      return res.sendStatus(404);
    }

    try {
      const userData = await authService.handleCallback(code);
      return res.redirect(userData.redirectUrl);
    } catch (err) {
      console.error("Error in callback: ", err);
      const redirectURI = await authService.getRedirectURI();
      return res.redirect(redirectURI);
    }
  }

  async verifyToken(req: Request, res: Response) {
    const access_token = req.headers.authorization;

    if (!access_token) {
      return res.json({ validToken: false, error: "Token not found" });
    }

    try {
      const verificationResult = await authService.verifyToken(access_token);
      return res.json(verificationResult);
    } catch (err) {
      console.error(err);
      return res.json({ validToken: false, error: "Invalid token" });
    }
  }
}

export default new AuthController();
