import { Component, ViewChild } from '@angular/core';
import { MatPaginator } from '@angular/material/paginator';
import { InfoModel } from 'src/app/shared/models/infomodel';
import { LocationsService } from 'src/app/shared/services/locations.service';
@Component({
  selector: 'app-locations',
  templateUrl: './locations.component.html',
  styleUrls: ['./locations.component.css']
})
export class LocationsComponent  {
  info:InfoModel;
  displayedColumns: string[] = ['id', 'name', 'type','dimesion', 'created'];
  dataSource = [];

  @ViewChild(MatPaginator) paginator: MatPaginator;

  
  constructor(private locationSrv: LocationsService){ }

   next():void{
     this.getLocations(this.info.next);
   }

   preview():void{
     this.getLocations(this.info.prev);
   }
  ngAfterViewInit() {
    //  this.dataSource.paginator = this.paginator;
  }

  ngOnInit():void{

   this.getLocations('https://rickandmortyapi.com/api/location');
      
  };
  getLocations(url:string){
    this.locationSrv.getLocation(url).subscribe((data:any)=>{
        
      const {info,results}=data;
    
  
      this.dataSource=results;
      this.info=info;
      console.log(this.dataSource)

    }); 
  };
}
