import { Router } from "express";
import clientes from "./clientes";
import productos from "./productos";

const routes = Router();

// ruta para productos
routes.use('/productos', productos);
routes.use('/clientes', clientes);

export default routes;