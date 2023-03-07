import { Component } from '@angular/core';
import { InfoModel } from 'src/app/shared/models/infomodel';
import { Personaje } from 'src/app/shared/models/personaje';
import { PersonajesService } from 'src/app/shared/services/personajes.service';


@Component({
  selector: 'app-lista-cards',
  templateUrl: './lista-cards.component.html',
  styleUrls: ['./lista-cards.component.css']
})
export class ListaCardsComponent {
  lista:Personaje[]=[];
  info:InfoModel;
  constructor(private personajeSrv: PersonajesService){ }
  ngOnInit():void{

    this.getPersonaje('https://rickandmortyapi.com/api/character');
       
   };
  next():void{
    this.getPersonaje(this.info.next);
  }
  preview():void{
    this.getPersonaje(this.info.prev);
  }
  

 
  getPersonaje(url:string){
    this.personajeSrv.getPersonaje(url).subscribe((data:any)=>{
      this.lista=[];
      const {info,results}=data;
      this.lista=[...this.lista,...results];
      this.info=info;
       console.log(results)

    }); 
  };
}
