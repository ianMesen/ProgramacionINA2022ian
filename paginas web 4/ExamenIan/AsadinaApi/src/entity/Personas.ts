import { Column, Entity, ManyToMany, OneToMany, OneToOne, PrimaryColumn, PrimaryGeneratedColumn } from "typeorm";
import { IsInt, IsBoolean, IsNotEmpty, IsString, MaxLength } from "class-validator";
import { Empleados } from "./Empleados";
// import { Empleados } from "./Empleados";
@Entity()
export class Personas {


    @PrimaryColumn()
    @IsInt({ message: 'tiene que ser un valor entero' })
    @IsNotEmpty({ message: 'se requiere el id' })
    id: number

    @Column()
    @IsString({ message: 'No es un valor de caracter' })
    @IsNotEmpty({ message: 'se requiere el nombre' })
    @MaxLength(50, { message: 'el nombre no puede contener mas de 50 caracteres' })
    nombre: String

    @Column()
    @IsString({ message: 'No es un valor de caracter' })
    @IsNotEmpty({ message: 'se requiere el apellido1' })
    @MaxLength(50, { message: 'el apellido1 no puede contener mas de 20 caracteres' })
    apellido1: String

    @Column()
    @IsString({ message: 'No es un valor de caracter' })
    @IsNotEmpty({ message: 'se requiere el apellido2' })
    @MaxLength(50, { message: 'el apellido2 no puede contener mas de 20 caracteres' })
    apellido2: String

    @Column()
    @IsString({ message: 'No es un valor de caracter' })
    @IsNotEmpty({ message: 'se requiere el correo' })
    @MaxLength(50, { message: 'el correo no puede contener mas de 30 caracteres' })
    email: String

    @Column()
    @IsInt({ message: 'tiene que ser un valor entero' })
    @IsNotEmpty({ message: 'se requiere el telefeno' })
    telefono: number

    @OneToOne(() => Empleados, (emple) => emple.persona)
    personas: Empleados[]


}