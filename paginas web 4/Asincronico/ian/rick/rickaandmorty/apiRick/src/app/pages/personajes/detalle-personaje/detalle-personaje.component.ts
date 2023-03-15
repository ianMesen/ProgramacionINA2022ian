import { Component, SchemaMetadata } from '@angular/core';
import { NgModule } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Personaje } from 'src/app/shared/models/personaje';
import { PersonajesService } from 'src/app/shared/services/personajes.service';

@Component({
  selector: 'app-detalle-personaje',
  templateUrl: './detalle-personaje.component.html',
  styleUrls: ['./detalle-personaje.component.css']
})
export class DetallePersonajeComponent {
  personaje: Personaje;
  // linkEpisodio:string;
  // id:string;
  // episodios:string[]=['id','name','air_date','episode','created']
  constructor(route:ActivatedRoute ,srv:PersonajesService){

    const id= route.snapshot.paramMap.get('id');
    
    srv.getPersonajeById(id).subscribe((result:any)=>{

      const {episode}=result;
      this.personaje=result;
      this.personaje.episode=episode;
      console.log(this.personaje.episode);
    })
  }
  getIdEpisodio(episode:string){
    let linkEpisodio = episode.split("sode/")
    let id =linkEpisodio[1];
    // console.log(id);
    return id;
  
    
  }


}
