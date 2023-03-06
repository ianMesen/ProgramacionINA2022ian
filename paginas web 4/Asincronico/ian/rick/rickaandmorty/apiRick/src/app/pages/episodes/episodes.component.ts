import { Component, ViewChild } from '@angular/core';
import { MatPaginator } from '@angular/material/paginator';
import { InfoModel } from 'src/app/shared/models/infomodel';
import { EpisodesService } from 'src/app/shared/services/episodes.service';
@Component({
  selector: 'app-locations',
  templateUrl: './episodes.component.html',
  styleUrls: ['./episodes.component.css']
})
export class EpisodesComponent  {
  info:InfoModel;
  displayedColumns: string[] = ['id', 'name', 'air_date','episode', 'created'];
  dataSource = [];

  @ViewChild(MatPaginator) paginator: MatPaginator;

  
  constructor(private episodeSrv: EpisodesService){ }

   next():void{
     this.getEpisodes(this.info.next);
   }

   preview():void{
     this.getEpisodes(this.info.prev);
   }
  ngAfterViewInit() {
    //  this.dataSource.paginator = this.paginator;
  }

  ngOnInit():void{

   this.getEpisodes('https://rickandmortyapi.com/api/episode');
      
  };
  getEpisodes(url:string){
    this.episodeSrv.getEpisode(url).subscribe((data:any)=>{
        
      const {info,results}=data;
    
  
      this.dataSource=results;
      this.info=info;
      console.log(this.dataSource)

    }); 
  };
}

