import { Request, Response } from "express";
import { getAllCEBE, createCEBE } from "../services/cebe.service";

export const getAllCEBEController = async (req: Request, res: Response) => {
  try {
    const cebes = await getAllCEBE();
    res.json(cebes);
  } catch (error) {
    res.status(500).json({ error: "Error retrieving cebe: " + error });
  }
};

export const createCEBEController = async (req: Request, res: Response) => {
  const newCEBE = req.body;
  try {
    const cebe = await createCEBE(newCEBE);
    res.status(201).json(cebe);
  } catch (error) {
    res.status(500).json({ error: "Error creating cebe: " + error });
  }
};
