import { Router } from "express";
import {
  createPersonController,
  getAllPersonsController,
} from "../controller/presona.controller";

const routerPerson = Router();

routerPerson.get("/all", getAllPersonsController);
routerPerson.post("/new", createPersonController);

export default routerPerson;
