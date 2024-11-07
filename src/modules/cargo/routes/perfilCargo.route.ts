import { Router } from "express";
import {
  createCargoController,
  getAllCargosController,
} from "../controller/cargo.controller";

const ProfileCargoRouter = Router();

ProfileCargoRouter.get("/profile-cargo/all", getAllCargosController);
ProfileCargoRouter.post("/profile-cargo", createCargoController);

export default ProfileCargoRouter;
