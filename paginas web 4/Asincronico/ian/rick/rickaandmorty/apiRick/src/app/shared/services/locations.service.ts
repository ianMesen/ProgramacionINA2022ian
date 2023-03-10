import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from'@angular/common/http'
import { Location } from'../models/location'
@Injectable({
  providedIn: 'root'
})
export class LocationsService {

  constructor(private http :HttpClient) { }

  getLocation(url?:string):Observable<any>{

    url==null?"https://rickandmortyapi.com/api/location":url;

    return this.http.get(<string>url);
  }
  getLocationById(id:any):Observable<Location>{
    return this.http.get<Location>('https://rickandmortyapi.com/api/location/'+id)

  }
}
