import { Router } from "express";
import ProductosController from "../controller/ProductosController";

const routes = Router();

// ruta para todos los dato:productos
routes.get('', ProductosController.get);
// ruta para buscar un producto por ID
routes.get('/:id', ProductosController.getById);
// ruta para eliminacion logica de un producto
routes.delete('/:id', ProductosController.deleteById);
routes.post('/create', ProductosController.create);
routes.patch('/update/:id', ProductosController.update);
//patch caerle encima al que ya tengo
//put eliminar y volver a crear


export default routes;