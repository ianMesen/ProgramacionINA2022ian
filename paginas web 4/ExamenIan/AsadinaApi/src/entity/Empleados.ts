import { Column, Entity, JoinColumn, JoinTable, ManyToMany, ManyToOne, OneToMany, OneToOne, PrimaryColumn, PrimaryGeneratedColumn } from "typeorm";
import { IsInt, IsBoolean, IsNotEmpty, IsString, MaxLength } from "class-validator";
import { Personas } from "./Personas";
import { Puestos } from "./Puestos";

// import { Personas } from "./Personas";
@Entity()
export class Empleados {


    @PrimaryColumn()
    @IsInt({ message: 'tiene que ser un valor entero' })
    @IsNotEmpty({ message: 'se requiere el id' })
    id: number

    @Column()
    @IsString({ message: 'No es un valor de caracter' })
    @IsNotEmpty({ message: 'se requiere el correo' })
    @MaxLength(50, { message: 'el correo no puede contener mas de 30 caracteres' })
    email: String
    //12
    @Column()
    @IsInt({ message: 'tiene que ser un valor entero' })
    @IsNotEmpty({ message: 'se requiere el telefeno' })
    telefono: number

    @Column()
    @IsBoolean({ message: 'tiene que ser un valor boolean' })
    @IsNotEmpty({ message: 'se requiere el estado' })
    estado: boolean

//, (perso) => perso.personas
    @OneToOne(() => Personas, (perso) => perso.personas,{cascade:['insert','update']})
    @JoinColumn()
    persona: Personas

    
    @ManyToOne(()=>Puestos, (pues)=>pues.empleado)
    puesto:Puestos;
}