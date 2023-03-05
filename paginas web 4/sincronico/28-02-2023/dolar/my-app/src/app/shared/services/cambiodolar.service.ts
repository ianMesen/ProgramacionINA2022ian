import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { cambioDolar } from '../models/cambioDolar';
@Injectable({
  providedIn: 'root'
})
export class CambiodolarService {


  constructor( private http: HttpClient) { }

  getCambios():Observable<cambioDolar>{

    return this.http.get<cambioDolar>("https://api.hacienda.go.cr/indicadores/tc/dolar")
  }
}
