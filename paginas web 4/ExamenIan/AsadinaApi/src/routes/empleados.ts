
import { Router } from "express";
import EmpleadosController from "../controller/EmpleadosController";

const routes = Router();

routes.get('', EmpleadosController.get);
 routes.get('/:id', EmpleadosController.getById);
 routes.delete('/:id', EmpleadosController.deleteById);
 routes.post('/create', EmpleadosController.create);
 routes.patch('/update/:id', EmpleadosController.update);



export default routes;