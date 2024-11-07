import { Request, Response } from "express";
import { createCargos, getAllCargos } from "../service/cargo.service";

export const getAllCargosController = async (req: Request, res: Response) => {
  try {
    const cargos = await getAllCargos();
    res.json(cargos);
  } catch (error) {
    res.status(500).json({ error: "Error retrieving cargos: " + error });
  }
};

export const createCargoController = async (req: Request, res: Response) => {
  const newCargo = req.body;
  try {
    const cargo = await createCargos(newCargo);
    res.status(201).json(cargo);
  } catch (error) {
    res.status(500).json({ error: "Error creating cargo: " + error });
  }
};
