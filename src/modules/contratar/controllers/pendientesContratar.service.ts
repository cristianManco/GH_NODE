import { Request, Response } from "express";
import {
  getAllPendientesContratar,
  createPendientesContratar,
} from "../services/pendientesContratar.service";

export const getAllPendientesContratarController = async (
  req: Request,
  res: Response,
) => {
  try {
    const pendientes = await getAllPendientesContratar();
    res.json(pendientes);
  } catch (error) {
    res
      .status(500)
      .json({ error: "Error retrieving pendientesContratar: " + error });
  }
};

export const createPendientesContratarController = async (
  req: Request,
  res: Response,
) => {
  const newPendiente = req.body;
  try {
    const pendiente = await createPendientesContratar(newPendiente);
    res.status(201).json(pendiente);
  } catch (error) {
    res
      .status(500)
      .json({ error: "Error creating pendienteContratar: " + error });
  }
};
