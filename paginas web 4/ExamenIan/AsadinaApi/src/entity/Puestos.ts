import { Column, Entity, OneToMany, PrimaryColumn, PrimaryGeneratedColumn } from "typeorm";
import { IsInt,IsBoolean, IsNotEmpty, IsString, MaxLength } from "class-validator";
import { Empleados } from "./Empleados";
// import { Empleados } from "./Empleados";
@Entity()
export class Puestos {

   
    @PrimaryColumn()
    @IsInt({message:'tiene que ser un valor entero'})
    @IsNotEmpty({message:'se requiere el id'})
    id: number

    @Column()
    @IsString({message:'No es un valor de caracter'})
    @IsNotEmpty({message:'se requiere el nombre'})
    @MaxLength(50,{message:'el nombre no puede contener mas de 50 caracteres'})
    namePuesto: String

    empleado:Empleados[]
    
        // @OneToOne ( ( ) = > Foto , ( foto ) = > foto . metadatos ) 
    // @JoinColumn ( ) foto : Relación < Foto > }   

    // @OneToOne ( ( ) = > PhotoMetadata , ( photoMetadata ) => photoMetadata . photo ) metadatos : Relación < PhotoMetadata > } 

    // @OneToMany(() => Empleados, (prod) => prod.Empleados) 
    // productos:Personas[]

}