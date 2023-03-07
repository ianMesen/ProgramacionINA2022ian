import { Component } from '@angular/core';
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
 
  constructor(route:ActivatedRoute ,srv:PersonajesService){

    const id= route.snapshot.paramMap.get('id');
    
    srv.getPersonajeById(id).subscribe((per:any)=>{
      this.personaje=per;
      console.log(this.personaje);
    })
  }



}
