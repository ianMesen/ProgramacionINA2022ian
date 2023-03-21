import { Request, Response } from "express";

import { AppDataSource } from "../data-source";
import { Clientes } from "../entity/Clientes";

class ClientesController{
    static get = async (req: Request, res: Response) => {

        const clientesRepo = AppDataSource.getRepository(Clientes);
    
      
        const listaClientes = await clientesRepo.find();
        if (listaClientes.length > 0) { 
          return res.status(200).json(listaClientes);
        } else { 
          return res.status(400).json({ message: 'no hay clientes' })
        }
      }
    
      //buscar cliete por id
      static getById = async (req: Request, res: Response) => {
     
        const clientesRepo = AppDataSource.getRepository(Clientes);
 
        const id = parseInt(req.params['id']);
        if (!id) {
          return res.status(400).json({ message: 'id del cliente no indicado' })
        }
        try { 
          const cliente = await clientesRepo.findOneOrFail({ where: { id } })
          return res.status(200).json(cliente)
    
        } catch (error) { 
          return res.status(400).json({ message: 'el id del cliente no se encontro' })
    
        }
    
      }
    
      // Eliminar clientee
      static deleteById = async (req: Request, res: Response) => {
        
        const clientesReposi = AppDataSource.getRepository(Clientes);
    
        const id = parseInt(req.params['id']);
      
        let cliente: Clientes; 
  
        try {
            cliente = await clientesReposi.findOneOrFail({ where: { id } })
        } catch (error) {
          return res.status(400).json({ message: 'no se encontro con el id que desea eliminar' })
    
        }
       
        cliente.estado = false;
        await clientesReposi.save(cliente);
       
        return res.status(200).json({ message: 'El cliente se ha eliminado' })
      }


      //crear cliente
    
      static create = async (req: Request, res: Response) => {

        console.log(req.body);
    
        const { id, cedula, nombre, apellido1,apellido2,email,fechaNac } = req.body;
        //validar datos entrada que vienen en el cuerpo
        //regla negocio para validar datos entrada campos que no permita nulos o campos a nivel de negocio requiere y q a nivel de db permita null
        if (!id) {
          return res.status(400).json({ message: 'falta el id' })
        } else if (!cedula) {
          return res.status(400).json({ message: 'falta la cedula' })
        } else if (!nombre) {
          return res.status(400).json({ message: 'falta el nombre' })
        } else if (!apellido1) {
          return res.status(400).json({ message: 'falta el apellido1' })
        }else if (!apellido2) {
          return res.status(400).json({ message: 'falta el apellido2' })
        }else if (!email) {
          return res.status(400).json({ message: 'falta el email' })
        }else if (!fechaNac) {
          return res.status(400).json({ message: 'falta el fechaNac' })
        }
    
    
        const clientesReposi = AppDataSource.getRepository(Clientes);
    
    
    
        if (await clientesReposi.findOne({ where: { id } })) {
    
          return res.status(400).json({ message: 'ya existe ese id en los clientes' })
    
        }
    
        let cliente = new Clientes();
        cliente.id = id;
        cliente.cedula = cedula;
        cliente.nombre = nombre;
        cliente.apellido1 = apellido1;
        cliente.apellido2 = apellido2;
        cliente.email = email;
        cliente.fechaNac = fechaNac;
    
    
        await clientesReposi.save(cliente);
        return res.status(201).json({ message: 'el cliente a sido creado' });
    
      }
    

      //actualizar cliente
      static update = async (req: Request, res: Response) => {
    
        const id = parseInt(req.params['id']);
        const { cedula,nombre, apellido1, apellido2,email,fechaNac } = req.body;
      
        //datos entrada
        if (!id) {
          return res.status(400).json({ message: 'falta el id' })
        } else if (!cedula) {
          return res.status(400).json({ message: 'falta la cedula' })
        } else if (!nombre) {
          return res.status(400).json({ message: 'falta el nombre' })
        } else if (!apellido1) {
          return res.status(400).json({ message: 'falta el apellido1' })
        }else if (!apellido2) {
          return res.status(400).json({ message: 'falta el apellido2' })
        }else if (!email) {
          return res.status(400).json({ message: 'falta el email' })
        }else if (!fechaNac) {
          return res.status(400).json({ message: 'falta el fechaNac' })
        }
    
        const clientesReposi = AppDataSource.getRepository(Clientes);
        let cliente: Clientes;
    
        try {
    
          cliente = await clientesReposi.findOneOrFail({ where: { id } })
    
        } catch (error) {
          return res.status(400).json({ message: 'no se encontro con el id' })
    
        }
    
        
        cliente.cedula = cedula;
        cliente.nombre = nombre;
        cliente.apellido1 = apellido1;
        cliente.apellido2 = apellido2;
        cliente.email = email;
        cliente.fechaNac = fechaNac;
        cliente.estado = true;


        await clientesReposi.save(cliente);
    
        return res.status(400).json({ message: 'el cliente a sido actualizado' })
      }
    }
export default ClientesController;