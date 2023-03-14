import { Component } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Location } from 'src/app/shared/models/location';
import { LocationsService } from 'src/app/shared/services/locations.service';

@Component({
  selector: 'app-detalle-location',
  templateUrl: './detalle-location.component.html',
  styleUrls: ['./detalle-location.component.css']
})
export class DetalleLocationComponent {
  location: Location;
 
  constructor(route:ActivatedRoute ,srv:LocationsService){

    const id= route.snapshot.paramMap.get('id');
    
    srv.getLocationById(id).subscribe((loc:any)=>{
      this.location=loc;
      console.log(this.location);
    })
  }
}
