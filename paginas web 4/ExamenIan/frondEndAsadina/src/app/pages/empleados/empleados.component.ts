import { Component, OnInit } from '@angular/core';
import { Empleados } from 'src/app/shared/models/empleados';
import { EmpleadosService } from 'src/app/shared/services/empleados.service';
import { PersonasService } from 'src/app/shared/services/personas.service';

@Component({
  selector: 'app-empleados',
  templateUrl: './empleados.component.html',
  styleUrls: ['./empleados.component.css']
})
//implements OnInit
export class EmpleadosComponent implements OnInit {

  displayedColumns: string[] = ['id','idPersonas','idPuesto', 'email', 'telefono','estado', 'nombre', 'apellido1','apellido2','namePuesto'];
  dataSource = [];
  lista:Empleados[]=[];
  constructor(private empleadoSrv: EmpleadosService){ }
//,private personaSrv: PersonasService
  ngOnInit():void{

    this.getEmpleado('http://localhost:3000/Empleados');
       
   };
  
   
   getEmpleado(url:string){
     this.empleadoSrv.getEmpleado(url).subscribe((data:any)=>{
         
       const results=data;
       this.lista=[];
       this.lista=[...this.lista,...results];
       this.dataSource=results;
       console.log(results)
     }); 
   };

}
