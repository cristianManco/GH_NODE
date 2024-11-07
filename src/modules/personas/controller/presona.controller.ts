import { Request, Response } from "express";
import { getAllPersons, createPerson } from "../services/person.service";

export const getAllPersonsController = async (req: Request, res: Response) => {
  try {
    const persons = await getAllPersons();
    res.json(persons);
  } catch (error) {
    res.status(500).json({ error: "Error retrieving persons: " + error });
  }
};

export const createPersonController = async (req: Request, res: Response) => {
  const newPerson = req.body;
  try {
    const person = await createPerson(newPerson);
    res.status(201).json(person);
  } catch (error) {
    res.status(500).json({ error: "Error creating person: " + error });
  }
};
