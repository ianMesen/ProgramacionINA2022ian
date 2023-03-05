import { Component, OnInit,AfterViewInit,ViewChild } from '@angular/core';
import { MatPaginator } from '@angular/material/paginator';
import { Personaje } from 'src/app/shared/models/personaje';
import { PersonajesService } from 'src/app/shared/services/personajes.service';
import { PersonajesModule } from './personajes.module';

@Component({
  selector: 'app-personajes',
  templateUrl: './personajes.component.html',
  styleUrls: ['./personajes.component.css']
})
export class PersonajesComponent implements OnInit, AfterViewInit {
  info:any;
  displayedColumns: string[] = ['id', 'name', 'status','species', 'gender','image','created'];
  dataSource = [];

  @ViewChild(MatPaginator) paginator: MatPaginator;

  
  constructor(private personajeSrv: PersonajesService){ }
  next():void{
      alert('estoy en next');
  }
  preview():void{
    alert('estoy en preview');
  }
  ngAfterViewInit() {
    //  this.dataSource.paginator = this.paginator;
  }

  ngOnInit():void{

    this.personajeSrv.getPersonaje().subscribe((data:any)=>{
      
      const {info,results}=data;
    

      this.dataSource=results;
      this.info=info;
      console.log(this.info)
    });

   
  }



}
