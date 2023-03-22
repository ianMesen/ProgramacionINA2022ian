import { Request, response, Response } from "express";
import {validate} from 'class-validator';
// import { request } from "https";
import { AppDataSource } from "../data-source";
import { Productos } from "../entity/Productos";
import { Categorias } from "../entity/Categorias";

class ProductosController {

  static get = async (req: Request, res: Response) => {

    //repositorio(entidad de productos )
    const productosRepo = AppDataSource.getRepository(Productos);

    // Vericacion de entrada a la BD
    const listaProduct = await productosRepo.find({ where: { estado: true } ,relations:['categoria']});//amlacena todos los produtos en listaProduct await llamado asincronico

    if (listaProduct.length > 0) { // si encuantra 1 o mas datos:Productos los muestra
      return res.status(200).json(listaProduct);
    } else { // de lo contrario un msnJson
      return res.status(400).json({ message: 'no hay datos' })
    }
  }

  // Busquedad get por ID
  static getById = async (req: Request, res: Response) => {
    //pasar datos por id
    const productosRepo = AppDataSource.getRepository(Productos);
    // parseamos el ID a Int obtener ruta por url
    const id = parseInt(req.params['id']);

    if (!id) { //si no idica el ID manda un msnJson
      return res.status(400).json({ message: 'no se indico el id' })
    }
    try { // si lo encuantra manda la respuesta en Json
      const producto = await productosRepo.findOneOrFail({ where: { id, estado: true },relations:['categoria'] })
      return res.status(200).json(producto)

    } catch (error) { //si no encuantra el ID manda un msnJson
      return res.status(400).json({ message: 'no se encontro con el id' })
    }
  }


  // Eliminacion logica del producto
  static deleteById = async (req: Request, res: Response) => {
    //pasar datos por id
    const productosRepo = AppDataSource.getRepository(Productos);

    const id = parseInt(req.params['id']);

    // var = variable Global cualquiera lo puede accede 
    // let = cuando esta dentro de un metodo o que lo contenga no es global
    let producto: Productos; //se agrega la variable duera del tryCatch para que la puedan acceder todo el metodo
    // un try-catch donde muestra un mensaje en el catch si no encuantra el ID
    try {

      producto = await productosRepo.findOneOrFail({ where: { id } })

    } catch (error) {
      return res.status(400).json({ message: 'no se encontro con el id' })

    }
    // se cambia el valor a falso para una eliminacion logica
    producto.estado = false;
    await productosRepo.save(producto);//se guarda el cambion con .save
    // retorna un mesaje que se logro la eliminacion del producto
    return res.status(200).json({ message: 'El producto se ha eliminado' })
  }




  //crear nuevo producto
  static create = async (req: Request, res: Response) => {

    console.log(req.body);

    const { id, nombre,idCategoria, precio } = req.body;
    //validar datos entrada que vienen en el cuerpo
    //regla negocio para validar datos entrada campos que no permita nulos o campos a nivel de negocio requiere y q a nivel de db permita null
    if (!id) {
      return res.status(400).json({ message: 'falta el id' })
    }
    //  else if (!nombre) {
    //   return res.status(400).json({ message: 'falta el nombre' })
    //  } 
     else if (!idCategoria) {
       return res.status(400).json({ message: 'falta el categoria' })
     } 
    // else if (!precio) {
    //   return res.status(400).json({ message: 'falta el precio' })
    // }


    const productosRepo = AppDataSource.getRepository(Productos);
    const categoriaRepo = AppDataSource.getRepository(Categorias);
    if (await productosRepo.findOne({ where: { id } })) {

      return res.status(400).json({ message: 'ya existe ese id en los productos' })

    }

    let categoria = new Categorias();

    try {
      categoria=await categoriaRepo.findOneByOrFail({id:idCategoria});
    } catch (error) {
      return res.status(404).json({message:'ya existe la categoria inidicada'})
    }


    let producto = new Productos();
    producto.id = id;
    producto.nombre = nombre;
    producto.categoria = categoria;
    producto.precio = precio;
    producto.estado = true;

    //class validator
    const errors=await validate(producto,{ validationError: { target: false,value:false } });
    if(errors.length>0){
      return res.status(400).json(errors);
    }


    await productosRepo.save(producto);
    return res.status(201).json({ message: 'el producto a sido creado' });

  }




  //actualizar productos
  static update = async (req: Request, res: Response) => {

    const id = parseInt(req.params['id']);
    const { nombre,idCategoria, precio } = req.body;
  
    //valido datos de entrada
    if (!id) {
      return res.status(400).json({ message: 'falta el id' })
    } 
    // else if (!nombre) {
    //   return res.status(400).json({ message: 'falta el nombre' })
    // 
  //} 
  else if (!idCategoria) {
       return res.status(400).json({ message: 'falta el categoria' })
     }
    // else if (!precio) {
    //   return res.status(400).json({ message: 'falta el precio' })
    // }

    const productosRepo = AppDataSource.getRepository(Productos);
    const categoriaRepo = AppDataSource.getRepository(Categorias);
    let producto: Productos;

    try {

      producto = await productosRepo.findOneOrFail({ where: { id } })

    } catch (error) {
      return res.status(400).json({ message: 'no se encontro con el id' })

    }

    let categoria = new Categorias();

    try {
      categoria=await categoriaRepo.findOneByOrFail({id:idCategoria});
    } catch (error) {
      return res.status(404).json({message:'no existe la categoria inidicada'})
    }


    producto.nombre = nombre;
    producto.categoria = categoria;
    producto.precio = precio;


    //validar class validator
    const errors=await validate(producto,{ validationError: { target: false,value:false } });
    if(errors.length>0){
      
      return res.status(400).json(errors);
    }



    await productosRepo.save(producto);

    return res.status(400).json({ message: 'el producto a sido actualizado' })
  }

  // validar(): boolean {
  //   return true;

  // }
}

export default ProductosController;