import { validate } from "class-validator";
import { Request, Response } from "express";
import { AppDataSource } from "../data-source";
import { Categorias } from "../entity/Categorias";

class CategoriasController {

    static get = async (req: Request, res: Response) => {


        const categoriasRepo = AppDataSource.getRepository(Categorias);


        const listaCatego = await categoriasRepo.find({ where: { estado: true } });

        if (listaCatego.length > 0) {
            return res.status(200).json(listaCatego);
        } else {
            return res.status(400).json({ message: 'no hay datos' })
        }
    }

    static getById = async (req: Request, res: Response) => {

        const categoriasRepo = AppDataSource.getRepository(Categorias);
       
        const id = parseInt(req.params['id']);

        if (!id) { 
            return res.status(400).json({ message: 'no se indico el id' })
        }
        try { 
            const categorias = await categoriasRepo.findOneOrFail({ where: { id, estado: true } })
            return res.status(200).json(categorias)

        } catch (error) { 
            return res.status(400).json({ message: 'no se encontro con el id' })
        }
    }


    static deleteById = async (req: Request, res: Response) => {
      
        const categoriasRepo = AppDataSource.getRepository(Categorias);

        const id = parseInt(req.params['id']);

        let categoria: Categorias; 
        try {

            categoria = await categoriasRepo.findOneOrFail({ where: { id } })

        } catch (error) {
            return res.status(400).json({ message: 'no se encontro con el id' })

        }

        categoria.estado = false;
        await categoriasRepo.save(categoria);
      
        return res.status(200).json({ message: 'la categoria se ha eliminado' })
    }




    //crear nuevo 
    static create = async (req: Request, res: Response) => {

        console.log(req.body);
    
        const { id, nombre, estado } = req.body;
        //datos entrada
        if (!id) {
          return res.status(400).json({ message: 'falta el id' })
        } else if (!nombre) {
          return res.status(400).json({ message: 'falta el nombre' })
        } 
    
        const categoriasRepo = AppDataSource.getRepository(Categorias);


        if (await categoriasRepo.findOne({ where: { id } })) {
    
          return res.status(400).json({ message: 'ya ese id en las categorias' })
    
        }
    
        let categoria = new Categorias();
        try {
            categoria=await categoriasRepo.findOneByOrFail({id});
          } catch (error) {
            return res.status(404).json({message:'ya existe la categoria inidicada'})
          }
      
        categoria.id = id;
        categoria.nombre = nombre;
        categoria.estado = estado;

    
        await categoriasRepo.save(categoria);
        return res.status(201).json({ message: 'la categoria a sido creada ' });
    
      }



    //actualizar 
    static update = async (req: Request, res: Response) => {
    
        const id = parseInt(req.params['id']);
        const { nombre, estado} = req.body;
      
        //datos entrada
        if (!id) {
          return res.status(400).json({ message: 'falta el id' })
        }  else if (!nombre) {
          return res.status(400).json({ message: 'falta el nombre' })
        }
    
        const categoriasRepo = AppDataSource.getRepository(Categorias);
        let categoria: Categorias;
    
        try {
    
            categoria = await categoriasRepo.findOneOrFail({ where: { id } })
    
        } catch (error) {
          return res.status(400).json({ message: 'no se encontro con el id' })
    
        }
    

        categoria.id = id;
        categoria.nombre = nombre;
       
        categoria.estado = estado;


        await categoriasRepo.save(categoria);
    
        return res.status(400).json({ message: 'la categoria a sido actualizada' })
      }
}





export default CategoriasController;