import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from'@angular/common/http'
import { Personaje } from'../models/personaje'
@Injectable({
  providedIn: 'root'
})
export class PersonajesService {

  constructor(private http :HttpClient) { }

  getPersonaje(url?:string):Observable<any>{

    url==null?"https://rickandmortyapi.com/api/character":url;

    return this.http.get(<string>url);
  }

  getPersonajeById(id:any):Observable<Personaje>{
    return this.http.get<Personaje>('https://rickandmortyapi.com/api/character/'+id)

  }
}
