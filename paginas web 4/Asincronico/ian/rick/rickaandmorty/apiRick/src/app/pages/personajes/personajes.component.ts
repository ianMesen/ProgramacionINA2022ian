import { Component, OnInit,AfterViewInit,ViewChild } from '@angular/core';

import { InfoModel } from 'src/app/shared/models/infomodel';
import { PersonajesService } from 'src/app/shared/services/personajes.service';

@Component({
  selector: 'app-personajes',
  templateUrl: './personajes.component.html',
  styleUrls: ['./personajes.component.css']
})
export class PersonajesComponent implements OnInit {
  info:InfoModel;
  displayedColumns: string[] = ['id', 'name', 'status','species', 'gender','image','created','actions'];
  dataSource = [];



  
  constructor(private personajeSrv: PersonajesService){ }
  next():void{
    this.getPersonaje(this.info.next);
  }
  preview():void{
    this.getPersonaje(this.info.prev);
  }


  ngOnInit():void{

   this.getPersonaje('https://rickandmortyapi.com/api/character');
      
  };
  getPersonaje(url:string){
    this.personajeSrv.getPersonaje(url).subscribe((data:any)=>{
        
      const {info,results}=data;
    
  
      this.dataSource=results;
      this.info=info;
      console.log(this.info)

    }); 
  };
};
