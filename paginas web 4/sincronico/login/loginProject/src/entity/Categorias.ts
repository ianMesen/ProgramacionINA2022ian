import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from "typeorm";
import { IsInt,IsBoolean, IsNotEmpty, IsString, MaxLength } from "class-validator";
import { Productos } from "./Productos";
@Entity()
export class Categorias {

   
    @PrimaryGeneratedColumn()
    @IsInt({message:'tiene que ser un valor entero'})
    @IsNotEmpty({message:'se requiere el id'})
    id: number

    @Column()
    @IsString({message:'No es un valor de caracter'})
    @IsNotEmpty({message:'se requiere el nombre'})
    @MaxLength(50,{message:'el nombre no puede contener mas de 50 caracteres'})
    nombre: String

    @Column()
    @IsBoolean({message:'tiene que ser un valor boolean'})
    @IsNotEmpty({message:'se requiere el estado'})
    estado: boolean
    
    @OneToMany(() => Productos, (prod) => prod.categoria) 
    productos:Productos[]

}