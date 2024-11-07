import { Request, Response } from "express";
import {
  createUser,
  deleteUser,
  getAllUsers,
  getUserById,
  updateUser,
} from "../service/user.service";

export const getAllUsersController = async (req: Request, res: Response) => {
  try {
    const limit = parseInt(req.query.limit as string) || 5;
    const page = parseInt(req.query.page as string) || 1;
    const sortField = (req.query.sortField as string) || "id";
    const sortOrder = (req.query.sortOrder as string) || "ASC";

    const result = await getAllUsers(limit, page, sortField, sortOrder);
    if (result) {
      res.json({
        data: result.users,
        total: result.total,
        limit,
        page,
      });
    } else {
      res.status(500).json({ error: "Error retrieving users." });
    }
  } catch (error) {
    res.status(500).json({ error: "Error retrieving users: " + error });
  }
};

export const createUserController = async (req: Request, res: Response) => {
  const { name, email, password } = req.body;
  try {
    await createUser(name, email, password);
    res.status(201).json({ message: "User created successfully" });
  } catch (error) {
    res.status(500).json({ error: "Error creating user: " + error });
  }
};

export const getUserByIdController = async (req: Request, res: Response) => {
  const { id } = req.params;
  try {
    const user = await getUserById(Number(id));
    if (!user) {
      res.status(404).json({ message: "User not found" });
    } else {
      res.json(user);
    }
  } catch (error) {
    res.status(500).json({ error: "Error retrieving user: " + error });
  }
};

export const updateUserController = async (req: Request, res: Response) => {
  const { id } = req.params;
  const { name, email, password } = req.body;
  try {
    await updateUser(Number(id), name, email, password);
    res.json({ message: "User updated successfully" });
  } catch (error) {
    res.status(500).json({ error: "Error updating user: " + error });
  }
};

export const deleteUserController = async (req: Request, res: Response) => {
  const { id } = req.params;
  try {
    await deleteUser(Number(id));
    res.json({ message: "User deleted successfully" });
  } catch (error) {
    res.status(500).json({ error: "Error deleting user: " + error });
  }
};
