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
    
    }
export default ClientesController;