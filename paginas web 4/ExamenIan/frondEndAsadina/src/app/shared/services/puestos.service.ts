import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from'@angular/common/http'

@Injectable({
  providedIn: 'root'
})
export class PuestosService {

  constructor(private http :HttpClient) { }

  getPuesto(url?:string):Observable<any>{

    url==null?"http://localhost:3000/Puestos":url;

    return this.http.get(<string>url);
  }


}
