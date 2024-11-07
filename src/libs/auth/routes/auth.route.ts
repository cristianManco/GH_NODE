import { Router, Request, Response } from "express";
import authService from "../services/auth.service";

const router = Router();

/* PATHS */

// Endpoint para obtener la URL de redirección para el inicio de sesión
router.get("/login", (req: Request, res: Response) => {
  try {
    const redirectURI = authService.getRedirectURI();
    res.status(200).json({ url: redirectURI });
  } catch (error) {
    console.error("Error in /login route:", error);
    res.status(500).json({ error: "Internal server error" });
  }
});

// Callback de autenticación para la cuenta empresarial de Microsoft
router.get("/callback", async (req: Request, res: Response): Promise<any> => {
  const code = req.query.code as string;

  if (!code) {
    return res.sendStatus(404).json({ error: "No code found in request" });
  }

  try {
    const userData = await authService.handleCallback(code);
    return res.redirect(userData.redirectUrl); // Redirige a la URL del usuario
  } catch (error) {
    console.error("Error in callback:", error);
    const fallbackUrl = await authService.getRedirectURI();
    return res.redirect(fallbackUrl); // Redirige a una URL segura en caso de error
  }
});

// Endpoint de verificación de token de acceso
router.get(
  "/verify/token",
  async (req: Request, res: Response): Promise<any> => {
    const accessToken = req.headers.authorization;

    if (!accessToken) {
      return res
        .status(401)
        .json({ validToken: false, error: "Token not found" });
    }

    try {
      const verificationResult = await authService.verifyToken(accessToken);
      return res.json(verificationResult);
    } catch (error) {
      console.error("Error verifying token:", error);
      return res
        .status(401)
        .json({ validToken: false, error: "Invalid token" });
    }
  },
);

// Método temporal para roles y permisos
router.get("/roles/permissions", (req: Request, res: Response) => {
  res.json({
    message: "Roles and permissions feature will be implemented later.",
  });
});

export default router;
