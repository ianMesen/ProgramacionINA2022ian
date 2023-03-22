import { IsInt,IsBoolean, IsNotEmpty, IsString, MaxLength,IsPositive } from "class-validator";


import { Column, Entity, ManyToOne, PrimaryColumn } from "typeorm";
import { Categorias } from "./Categorias";

@Entity()
export class Productos {
    // se agregan las columnas y sus propiedades de la tabla
    @PrimaryColumn()
    @IsInt({message:'tiene que ser un valor entero'})
    @IsNotEmpty({message:'se requiere el id'})
    id: number

    @Column()
    @IsString({message:'No es un valor de caracter'})
    @IsNotEmpty({message:'se requiere el nombre'})
    @MaxLength(50,{message:'el nombre no puede contener mas de 50 caracteres'})
    nombre: String

    // @Column()
    // // @IsDecimal({message:'tiene que ser un valor entero'})
    // @IsNotEmpty({message:'se requiere la categoria'})
    // idCategoria: number

    @Column()
    @IsInt({message:'tiene que ser un valor entero'})
    @IsNotEmpty({message:'se requiere el precio'})
    @IsPositive({message:'tiene que ser positivo'})
    precio: number

    @Column()
    @IsBoolean({message:'tiene que ser un valor boolean'})
    @IsNotEmpty({message:'se requiere el estado'})
    estado: boolean

    @ManyToOne(() => Categorias, (categorias) => categorias.productos)
    categoria: Categorias

}