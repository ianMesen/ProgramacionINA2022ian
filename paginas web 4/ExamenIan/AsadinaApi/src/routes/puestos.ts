
import { Router } from "express";
import PuestosController from "../controller/PuestosController";

const routes = Router();

routes.get('', PuestosController.get);
 routes.get('/:id', PuestosController.getById);
 routes.delete('/:id', PuestosController.deleteById);
 routes.post('/create', PuestosController.create);
 routes.patch('/update/:id', PuestosController.update);



export default routes;