
import { Router } from "express";
import PersonasController from "../controller/PersonasController";

const routes = Router();

routes.get('', PersonasController.get);
 routes.get('/:id', PersonasController.getById);
 routes.delete('/:id', PersonasController.deleteById);
 routes.post('/create', PersonasController.create);
 routes.patch('/update/:id', PersonasController.update);



export default routes;