import { Router } from "express";
import empleados from "./empleados";
import personas from "./personas";
import puestos from "./puestos";


const routes = Router();


 routes.use('/empleados', empleados);
routes.use('/puestos', puestos);
routes.use('/personas', personas);

export default routes;