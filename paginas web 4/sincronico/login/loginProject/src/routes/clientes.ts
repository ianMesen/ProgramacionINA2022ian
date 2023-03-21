import { Router } from "express";
import ClientesController from "../controller/ClientesController";

const routes = Router();

// ruta para todos los dato:cliente
routes.get('', ClientesController.get);
// ruta para buscar un cliente por ID
routes.get('/:cedula', ClientesController.getById);
// ruta para eliminacion logica de un cliente
routes.delete('/:cedula', ClientesController.deleteById);
routes.post('/create', ClientesController.create);
routes.patch('/update/:cedula', ClientesController.update);


export default routes;