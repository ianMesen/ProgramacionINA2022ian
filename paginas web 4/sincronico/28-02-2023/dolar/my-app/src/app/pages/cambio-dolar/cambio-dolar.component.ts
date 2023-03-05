import { Component } from '@angular/core';
import { cambioDolar } from 'src/app/shared/models/cambioDolar';
import { CambiodolarService } from 'src/app/shared/services/cambiodolar.service';

@Component({
  selector: 'app-cambio-dolar',
  templateUrl: './cambio-dolar.component.html',
  styleUrls: ['./cambio-dolar.component.css']
})
export class CambioDolarComponent {

  datoCambio: cambioDolar;

  constructor(private cambiosDolarSrv:CambiodolarService){

    this.cambiosDolarSrv.getCambios().subscribe((datos:cambioDolar)=>{
      
      this.datoCambio=datos;
      console.log(this.datoCambio);
    });
  }

}
