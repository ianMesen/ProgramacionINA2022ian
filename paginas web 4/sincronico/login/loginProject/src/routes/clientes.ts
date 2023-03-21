import { Router } from "express";
import ClientesController from "../controller/ClientesController";

const routes = Router();

// ruta para todos los dato:cliente
routes.get('', ClientesController.get);
// ruta para buscar un cliente por ID
routes.get('/:id', ClientesController.getById);
// ruta para eliminacion logica de un cliente
routes.delete('/:id', ClientesController.deleteById);
routes.post('/create', ClientesController.create);
routes.patch('/update/:id', ClientesController.update);


export default routes;