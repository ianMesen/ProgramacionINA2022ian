import { Component } from '@angular/core';

import { InfoModel } from 'src/app/shared/models/infomodel';
import { Location } from 'src/app/shared/models/location';
import { LocationsService } from 'src/app/shared/services/locations.service';
@Component({
  selector: 'app-locations',
  templateUrl: './locations.component.html',
  styleUrls: ['./locations.component.css']
})
export class LocationsComponent  {
  info:InfoModel;
  lista:Location[]=[];
  // displayedColumns: string[] = ['id', 'name', 'type','dimesion', 'created','detalles'];
  // dataSource = [];



  
  constructor(private locationSrv: LocationsService){ }

   next():void{
     this.getLocations(this.info.next);
   }

   preview():void{
     this.getLocations(this.info.prev);
   }


  ngOnInit():void{

   this.getLocations('https://rickandmortyapi.com/api/location');
      
  };
  getLocations(url:string){
    this.locationSrv.getLocation(url).subscribe((data:any)=>{
      this.lista=[];
      const {info,results}=data;
      this.lista=[...this.lista,...results];
  
      // this.dataSource=results;
      this.info=info;
      // console.log(this.dataSource)

    }); 
  };
}
