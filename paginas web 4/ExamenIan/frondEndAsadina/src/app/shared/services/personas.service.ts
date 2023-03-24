import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from'@angular/common/http'

@Injectable({
  providedIn: 'root'
})
export class PersonasService {

  constructor(private http :HttpClient) { }

  getPersonas(url?:string):Observable<any>{

    url==null?"http://localhost:3000/Personas":url;

    return this.http.get(<string>url);
  }


}
