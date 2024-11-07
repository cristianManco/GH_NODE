import { Request, Response } from "express";
import {
  getAllPerfilCampaña,
  createPerfilCampaña,
  getAplicativos,
} from "../services/perfilCampaña.service";

export const getAllPerfilCampañaController = async (
  req: Request,
  res: Response,
) => {
  try {
    const perfiles = await getAllPerfilCampaña();
    res.json(perfiles);
  } catch (error) {
    res.status(500).json({ error: "Error retrieving perfilCampaña: " + error });
  }
};

export const createPerfilCampañaController = async (
  req: Request,
  res: Response,
) => {
  const newPerfil = req.body;
  try {
    const perfil = await createPerfilCampaña(newPerfil);
    res.status(201).json(perfil);
  } catch (error) {
    res.status(500).json({ error: "Error creating perfilCampaña: " + error });
  }
};

export const gteallAplicativos = async (req: Request, res: Response) => {
  try {
    const Aplicativos = await getAplicativos();
    res.json(Aplicativos);
  } catch (error) {
    res.status(500).json({ error: "Error retrieving Aplicativos: " + error });
  }
};
