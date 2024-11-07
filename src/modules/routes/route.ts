import { Router } from "express";
import {
  createPerfilCampañaController,
  getAllPerfilCampañaController,
  gteallAplicativos,
} from "../campaña/controllers/perfilCapaña.service";
import {
  createCargoController,
  getAllCargosController,
} from "../cargo/controller/cargo.controller";
import {
  createPerfilCargoController,
  getAllperfilCArgoController,
} from "../cargo/controller/perfilCargo.controller";
import {
  createRequisicionController,
  deleteRequisicionController,
  getAllRequisicionesController,
  getRequisicionByIdController,
  updateRequisicionController,
} from "../requisiciones/controller/requisicion.controller";

const routeBpo = Router();

// rutas de  campañas

routeBpo.get("/all", getAllPerfilCampañaController);
routeBpo.post("/new", createPerfilCampañaController);

// rutas de cargos

routeBpo.get("/cargo/all", getAllCargosController);
routeBpo.get("/perfil/all", getAllperfilCArgoController);
routeBpo.post("/cargo/new", createCargoController);
routeBpo.post("/perfil-cargo/new", createPerfilCargoController);

// rutas de
routeBpo.get("/aplicativos", gteallAplicativos);

// para las requisiciones

routeBpo.get("/all", getAllRequisicionesController);
routeBpo.post("/new", createRequisicionController);
routeBpo.get("/:id", getRequisicionByIdController);
routeBpo.put("/:id", updateRequisicionController);
routeBpo.delete("/:id", deleteRequisicionController);

export default routeBpo;
