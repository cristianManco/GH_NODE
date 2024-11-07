import { Request, Response } from "express";
import {
  createCargo,
  getAllCargos,
  getPerfilCargoById,
} from "../service/PerfilCargo.service";

export const getAllperfilCArgoController = async (
  req: Request,
  res: Response,
) => {
  try {
    const cargos = await getAllCargos();
    res.json(cargos);
  } catch (error) {
    res.status(500).json({ error: "Error retrieving cargos: " + error });
  }
};

export const createPerfilCargoController = async (
  req: Request,
  res: Response,
) => {
  const newCargo = req.body;
  try {
    const cargo = await createCargo(newCargo);
    res.status(201).json(cargo);
  } catch (error) {
    res.status(500).json({ error: "Error creating cargo: " + error });
  }
};

// usar losdemas metodos declarador en el servicio de perfilcargo obtner por id  editar y eliminar

export const getPerfilByIdController = async (req: Request, res: Response) => {
  const { id } = req.params;
  try {
    const user = await getPerfilCargoById(Number(id));
    if (!user) {
      res.status(404).json({ message: "perfilcargo not found" });
    } else {
      res.json(user);
    }
  } catch (error) {
    res.status(500).json({ error: "Error retrieving user: " + error });
  }
};
