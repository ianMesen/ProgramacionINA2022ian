import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from'@angular/common/http'

@Injectable({
  providedIn: 'root'
})
export class EmpleadosService {

  constructor(private http :HttpClient) { }

  getEmpleado(url?:string):Observable<any>{

    url==null?"http://localhost:3000/Empleados":url;

    return this.http.get(<string>url);
  }


}
