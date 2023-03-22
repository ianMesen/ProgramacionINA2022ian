import { Column, Entity, PrimaryColumn } from "typeorm";
import { IsInt,IsBoolean, IsDecimal, IsNotEmpty, IsString, MaxLength,IsPositive } from "class-validator";
@Entity()
export class Clientes {
    // se agregan las columnas y sus propiedades de la tabla
   
    @PrimaryColumn()
    @PrimaryColumn()
    @IsInt({message:'tiene que ser un valor entero'})
    @IsNotEmpty({message:'se requiere el id'})
    cedula: number

    @Column()
    @IsString({message:'No es un valor de caracter'})
    @IsNotEmpty({message:'se requiere el nombre'})
    @MaxLength(50,{message:'el nombre no puede contener mas de 50 caracteres'})
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