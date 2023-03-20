import { Column, Entity, PrimaryColumn } from "typeorm";

@Entity()
export class Clientes {
    // se agregan las columnas y sus propiedades de la tabla
    @PrimaryColumn()
    id: number
    
    @PrimaryColumn()
    cedula: number

    @Column()
    nombre: String

    @Column()
    apellido1: String

    @Column()
    apellido2: String

    @Column()
    email: String

    @Column()
    fechaNac: Date

    @Column()
    estado: boolean
    

}