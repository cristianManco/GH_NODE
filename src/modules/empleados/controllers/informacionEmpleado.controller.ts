import { Request, Response } from "express";
import {
  createInformacionEmpleados,
  getAllInformacionEmpleados,
} from "../services/informacionEmpleado.service";

export const getAllInformacionEmpleadosController = async (
  req: Request,
  res: Response,
) => {
  try {
    const info = await getAllInformacionEmpleados();
    res.json(info);
  } catch (error) {
    res
      .status(500)
      .json({ error: "Error retrieving informacionEmpleados: " + error });
  }
};

export const createInformacionEmpleadosController = async (
  req: Request,
  res: Response,
) => {
  const newInfo = req.body;
  try {
    const info = await createInformacionEmpleados(newInfo);
    res.status(201).json(info);
  } catch (error) {
    res
      .status(500)
      .json({ error: "Error creating informacionEmpleados: " + error });
  }
};
