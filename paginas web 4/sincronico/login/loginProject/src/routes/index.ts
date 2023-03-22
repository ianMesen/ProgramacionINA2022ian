import { Router } from "express";
import clientes from "./clientes";
import productos from "./productos";
import categorias from "./categorias";

const routes = Router();

// ruta para productos,clientes
routes.use('/productos', productos);
routes.use('/clientes', clientes);
routes.use('/categorias', categorias);

export default routes;