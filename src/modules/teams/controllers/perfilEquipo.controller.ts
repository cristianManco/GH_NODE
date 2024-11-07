import { Request, Response } from "express";
import {
  getAllPerfilEquipo,
  createPerfilEquipo,
} from "../services/perfilEquipo.service";

export const getAllPerfilEquipoController = async (
  req: Request,
  res: Response,
) => {
  try {
    const equipos = await getAllPerfilEquipo();
    res.json(equipos);
  } catch (error) {
    res.status(500).json({ error: "Error retrieving perfilEquipo: " + error });
  }
};

export const createPerfilEquipoController = async (
  req: Request,
  res: Response,
) => {
  const newEquipo = req.body;
  try {
    const equipo = await createPerfilEquipo(newEquipo);
    res.status(201).json(equipo);
  } catch (error) {
    res.status(500).json({ error: "Error creating perfilEquipo: " + error });
  }
};
