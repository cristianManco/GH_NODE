import { Request, Response } from "express";
import {
  getAllMovimientoPersonas,
  createMovimientoPersonas,
} from "../services/movimientoPersonas.service";

export const getAllMovimientoPersonasController = async (
  req: Request,
  res: Response,
) => {
  try {
    const movimientos = await getAllMovimientoPersonas();
    res.json(movimientos);
  } catch (error) {
    res
      .status(500)
      .json({ error: "Error retrieving movimientoPersonas: " + error });
  }
};

export const createMovimientoPersonasController = async (
  req: Request,
  res: Response,
) => {
  const newMovimiento = req.body;
  try {
    const movimiento = await createMovimientoPersonas(newMovimiento);
    res.status(201).json(movimiento);
  } catch (error) {
    res
      .status(500)
      .json({ error: "Error creating movimientoPersonas" + error });
  }
};
