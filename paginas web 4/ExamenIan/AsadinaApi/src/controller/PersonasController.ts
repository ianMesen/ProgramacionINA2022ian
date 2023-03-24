import { Request, response, Response } from "express";
import { validate } from 'class-validator';

import { AppDataSource } from "../data-source";
// import { Empleados } from "../entity/Empleados";
import { Puestos } from "../entity/Puestos";
import { Personas } from "../entity/Personas";

class PersonasController {

    static get = async (req: Request, res: Response) => {

        //repositorio(entidad de Personass )
        const personasRepo = AppDataSource.getRepository(Personas);

        // Vericacion de entrada a la BD
        const listaPerso = await personasRepo.find({});

        if (listaPerso.length > 0) {
            return res.status(200).json(listaPerso);
        } else {
            return res.status(400).json({ message: 'no hay datos' })
        }
    }



    // Busquedad get por ID
    static getById = async (req: Request, res: Response) => {

        const personasRepo = AppDataSource.getRepository(Personas);

        const id = parseInt(req.params['id']);

        if (!id) {
            return res.status(400).json({ message: 'no se indico el id' })
        }
        try {
            const persona = await personasRepo.findOneOrFail({ where: { id } })
            return res.status(200).json(persona)

        } catch (error) {
            return res.status(400).json({ message: 'no existe el id indicado' })
        }
    }


    // Eliminacion
    static deleteById = async (req: Request, res: Response) => {

        const personasRepo = AppDataSource.getRepository(Personas);

        const id = parseInt(req.params['id']);

        let persona: Personas;
        try {

            persona = await personasRepo.findOneOrFail({ where: { id } })

        } catch (error) {
            return res.status(400).json({ message: 'no se encontro con el id' })

        }
        //importante verificar estoooooooooooooooooooooooooooooo
        // persona.estado = false;
        await personasRepo.save(persona);
        return res.status(200).json({ message: 'La persona a sido eliminada' })
    }




    //crear 
    static create = async (req: Request, res: Response) => {

        console.log(req.body);

        const { id, nombre, apellido1, apellido2, email, telefono } = req.body;

        if (!id) {
            return res.status(400).json({ message: 'falta el id' })
        }
        else if (!nombre) {
            return res.status(400).json({ message: 'falta el nombre' })
        }
        else if (!apellido1) {
            return res.status(400).json({ message: 'falta el apellido1' })
        }
        else if (!apellido2) {
            return res.status(400).json({ message: 'falta el apellido1' })
        }
        else if (!email) {
            return res.status(400).json({ message: 'falta el email' })
        }
        else if (!telefono) {
            return res.status(400).json({ message: 'falta el telefono' })
        }


        const personasRepo = AppDataSource.getRepository(Personas);
        // const empleadosRepo = AppDataSource.getRepository(Empleados);
        if (await personasRepo.findOne({ where: { id } })) {

            return res.status(400).json({ message: 'ya existe ese id en las personas' })

        }

        // let categoria = new Categorias();

        // try {
        //     categoria = await categoriaRepo.findOneByOrFail({ id: idCategoria });
        // } catch (error) {
        //     return res.status(404).json({ message: 'ya existe la categoria inidicada' })
        // }


        let persona = new Personas();
        persona.id = id;
        persona.nombre = nombre;
        persona.apellido1 = apellido1;
        persona.apellido2 = apellido2;
        persona.email = email;
        persona.telefono = telefono;

        //class validator
        const errors = await validate(persona, { validationError: { target: false, value: false } });
        if (errors.length > 0) {
            return res.status(400).json(errors);
        }


        await personasRepo.save(persona);
        return res.status(201).json({ message: 'la persona a sido creada' });

    }


    //actualizar 
    static update = async (req: Request, res: Response) => {

        const id = parseInt(req.params['id']);
        const { nombre, apellido1, apellido2, email, telefono } = req.body;

//asd
        //valido datos de entrada
       
        if (!id) {
            return res.status(400).json({ message: 'falta el id' })
        }
        else if (!nombre) {
            return res.status(400).json({ message: 'falta el nombre' })
        }
        else if (!apellido1) {
            return res.status(400).json({ message: 'falta el apellido1' })
        }
        else if (!apellido2) {
            return res.status(400).json({ message: 'falta el apellido1' })
        }
        else if (!email) {
            return res.status(400).json({ message: 'falta el email' })
        }
        else if (!telefono) {
            return res.status(400).json({ message: 'falta el telefono' })
        }

        const personasRepo = AppDataSource.getRepository(Personas);
        // const categoriaRepo = AppDataSource.getRepository(Categorias);
        let persona: Personas;

        try {

            persona = await personasRepo.findOneOrFail({ where: { id } })

        } catch (error) {
            return res.status(400).json({ message: 'no se encontro con el id' })

        }


        // let persona = new Personas();
        persona.id = id;
        persona.nombre = nombre;
        persona.apellido1 = apellido1;
        persona.apellido2 = apellido2;
        persona.email = email;
        persona.telefono = telefono;


        //validar class validator
        const errors = await validate(persona, { validationError: { target: false, value: false } });
        if (errors.length > 0) {

            return res.status(400).json(errors);
        }


        await personasRepo.save(persona);

        return res.status(400).json({ message: 'La persona a sido actualizada' })
    }


}

export default PersonasController;