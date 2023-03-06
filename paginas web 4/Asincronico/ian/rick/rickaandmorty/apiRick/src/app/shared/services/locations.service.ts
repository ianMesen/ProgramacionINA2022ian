import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from'@angular/common/http'

@Injectable({
  providedIn: 'root'
})
export class LocationsService {

  constructor(private http :HttpClient) { }

  getLocation(url?:string):Observable<any>{

    url==null?"https://rickandmortyapi.com/api/location":url;

    return this.http.get(<string>url);
  }
}
