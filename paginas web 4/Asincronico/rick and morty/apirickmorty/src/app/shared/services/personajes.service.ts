import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { personajes } from '../models/personajes';


@Injectable({
  providedIn: 'root'
})

export class PersonajesService {

  constructor(private http: HttpClient ) { }

  getCambios():Observable<personajes>{

    return this.http.get<personajes>("https://rickandmortyapi.com/api/character/2")
  }
}

