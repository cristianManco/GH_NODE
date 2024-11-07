import express from "express";
import bodyParser from "body-parser";
import swaggerJsDoc from "swagger-jsdoc";
import swaggerUi from "swagger-ui-express";
import ProfileCargoRouter from "./modules/cargo/routes/perfilCargo.route";
import routerPerson from "./modules/personas/Routes/personas.route";
import route from "./modules/users/routes/route";
import routeBpo from "./modules/routes/route";
import cors from "cors";
const app = express();
app.use(bodyParser.json());

// Habilitar CORS para todas las solicitudes
app.use(cors());
// Configuración de Swagger
const swaggerOptions = {
  swaggerDefinition: {
    openapi: "3.0.0",
    info: {
      title: "API de Gestion de usuarios",
      version: "1.0.0",
      description:
        "Una API de ejemplo utilizando Swagger y Express para gestionar usuarios usando una base de datos mysql",
    },
  },
  apis: [
    "./src/modules/users/routes/*.ts",
    "./src/modules/cargo/routes/*.ts",
    // agregar mas si es necesario
  ],
};

const swaggerDocs = swaggerJsDoc(swaggerOptions);
app.use("/api-docs", swaggerUi.serve, swaggerUi.setup(swaggerDocs));

// Rutas
app.use("/users", route);

app.use("/api", routeBpo);

app.use("/profile", ProfileCargoRouter);

app.use("/person", routerPerson);

const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
