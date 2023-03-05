import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from'@angular/common/http'
import { Personaje } from'../models/personaje'
@Injectable({
  providedIn: 'root'
})
export class PersonajesService {

  constructor(private http :HttpClient) { }

  getPersonaje():Observable<any>{
    return this.http.get("https://rickandmortyapi.com/api/character");
  }
}
