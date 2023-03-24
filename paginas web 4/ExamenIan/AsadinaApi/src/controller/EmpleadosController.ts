import { Request, response, Response } from "express";
import { validate } from 'class-validator';

import { AppDataSource } from "../data-source";
import { Puestos } from "../entity/Puestos";
import { Personas } from "../entity/Personas";
import { Empleados } from "../entity/Empleados";

class EmpleadosController {

    static get = async (req: Request, res: Response) => {

        //repositorio(entidad de empleados )
        const empleadosRepo = AppDataSource.getRepository(Empleados);

        // Vericacion de entrada a la BD
        const listaEmple = await empleadosRepo.find({ where: { estado: true }, relations: ['persona', 'puesto'] });

        if (listaEmple.length > 0) {
            return res.status(200).json(listaEmple);
        } else {
            return res.status(400).json({ message: 'no hay datos' })
        }
    }



    // Busquedad get por ID
    static getById = async (req: Request, res: Response) => {

        const empleadosRepo = AppDataSource.getRepository(Empleados);

        const id = parseInt(req.params['id']);

        if (!id) {
            return res.status(400).json({ message: 'no se indico el id' })
        }
        try {
            const empleado = await empleadosRepo.findOneOrFail({ where: { id, estado: true }, relations: ['persona', 'puesto'] })
            return res.status(200).json(empleado)

        } catch (error) {
            return res.status(400).json({ message: 'no existe el id indicado' })
        }
    }


    // Eliminacion
    static deleteById = async (req: Request, res: Response) => {

        const empleadosRepo = AppDataSource.getRepository(Empleados);

        const id = parseInt(req.params['id']);

        let empleado: Empleados;
        try {

            empleado = await empleadosRepo.findOneOrFail({ where: { id } })

        } catch (error) {
            return res.status(400).json({ message: 'no se encontro con el id' })

        }
        //importante verificar estoooooooooooooooooooooooooooooo
        empleado.estado = false;
        await empleadosRepo.save(empleado);
        return res.status(200).json({ message: 'el empleado a sido eliminada' })
    }




    //crear 
    static create = async (req: Request, res: Response) => {

        console.log(req.body);

        const { id, idPersona, idPuesto, email, telefono,apellido1,apellido2,nombre } = req.body;

        if (!id) {
            return res.status(400).json({ message: 'falta el id del empleado' })
        }
        else if (!idPersona) {
            return res.status(400).json({ message: 'falta el id de la persona' })
        }
        else if (!idPuesto) {
            return res.status(400).json({ message: 'falta el puesto' })
        }

        const empleadosRepo = AppDataSource.getRepository(Empleados);
        // const personasRepo = AppDataSource.getRepository(Personas);
         const puestosRepo = AppDataSource.getRepository(Puestos);
        if (await empleadosRepo.findOne({ where: { id } })) {

            return res.status(400).json({ message: 'ya existe ese id en los empleados' })

        }

        //validar FK


        // try {
        //     persona = await personasRepo.findOneByOrFail({ id: idPersona });
        // } catch (error) {
        //     return res.status(404).json({ message: 'ya existe la persona inidicada' })
        // }
        //validar FK


        let puesto = new Puestos();
        //   puesto.id=id;
        // puesto.nombrePuesto=nombrePuesto;

        
        try {
            puesto = await puestosRepo.findOneByOrFail({ id: idPuesto });
        } catch (error) {
            return res.status(404).json({ message: 'ya existe el puesto inidicado' })
        }


        let persona = new Personas();
        persona.id = idPersona;
        persona.email = email;
        persona.apellido1 = apellido1;
        persona.apellido2 = apellido2;
        persona.nombre = nombre;
        persona.telefono = telefono;


        let empleado = new Empleados();
        empleado.id = id;
        empleado.email = email;
        empleado.estado = true;
        empleado.telefono = telefono;
        empleado.persona = persona;
        empleado.puesto = puesto;
          



        //class validator
        const errors = await validate(empleado, { validationError: { target: false, value: false } });
        if (errors.length > 0) {
            return res.status(400).json(errors);
        }


        await empleadosRepo.save(empleado);
        return res.status(201).json({ message: 'el empleado a sido creado' });

    }


    //actualizar 
    static update = async (req: Request, res: Response) => {

        const id = parseInt(req.params['id']);

        const {  email, telefono,estado } = req.body;

        if (!id) {
            return res.status(400).json({ message: 'falta el id' })
        }
        // else if (!idPersona) {
        //     return res.status(400).json({ message: 'falta el id de persona' })
        // }
        // else if (!idPuesto) {
        //     return res.status(400).json({ message: 'falta el puesto' })
        // }



        const empleadosRepo = AppDataSource.getRepository(Empleados);
        // const personasRepo = AppDataSource.getRepository(Personas);
        // const puestosRepo = AppDataSource.getRepository(Puestos);
        let empleado: Empleados;

        try {

            empleado = await empleadosRepo.findOneOrFail({ where: { id } })

        } catch (error) {
            return res.status(400).json({ message: 'no se encontro con el id' })

        }
        //validar FK
        // let persona = new Personas();
       
        // persona.id = id;
        // persona.email = email;

        // persona.telefono = telefono;

        // try {
        //     persona = await personasRepo.findOneByOrFail({ id: idPersona });
        // } catch (error) {
        //     return res.status(404).json({ message: 'ya existe la persona inidicada' })
        // }
       
        // let puesto = new Puestos();

        // try {
        //     puesto = await puestosRepo.findOneByOrFail({ id: idPuesto });
        // } catch (error) {
        //     return res.status(404).json({ message: 'ya existe el puesto inidicado' })
        // }


        empleado.id = id;
        empleado.email = email;
        empleado.estado = true;
        empleado.telefono = telefono;
        // empleado.persona = persona;
        // empleado.puesto = puesto;



        const errors = await validate(empleado, { validationError: { target: false, value: false } });
        if (errors.length > 0) {

            return res.status(400).json(errors);
        }

        await empleadosRepo.save(empleado);

        return res.status(400).json({ message: 'El empleado a sido actualizado' })
    }


}

export default EmpleadosController;