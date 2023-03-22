
import { Router } from "express";
import CategoriasController from "../controller/CategoriasController";

const routes = Router();

routes.get('', CategoriasController.get);
 routes.get('/:id', CategoriasController.getById);
 routes.delete('/:id', CategoriasController.deleteById);
 routes.post('/create', CategoriasController.create);
 routes.patch('/update/:id', CategoriasController.update);



export default routes;