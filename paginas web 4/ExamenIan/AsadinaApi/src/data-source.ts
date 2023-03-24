import "reflect-metadata"
import { DataSource } from "typeorm"
 import { Empleados } from "./entity/Empleados"
import { Personas } from "./entity/Personas"
import { Puestos } from "./entity/Puestos"


export const AppDataSource = new DataSource({
    //
    type: "mysql",
    host: "localhost",
    port: 3306,
    username: "root",
    password: "1234",
    database: "asadinaapi",
    synchronize: true,
    logging: false,
    entities: [Empleados,Puestos,Personas],
    migrations: [],
    subscribers: [],
})
