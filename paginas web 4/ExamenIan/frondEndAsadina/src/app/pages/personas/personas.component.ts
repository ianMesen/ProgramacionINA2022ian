import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Personas } from 'src/app/shared/models/personas';
import { PersonasService } from 'src/app/shared/services/personas.service';

@Component({
  selector: 'app-personas',
  templateUrl: './personas.component.html',
  styleUrls: ['./personas.component.css']
})
export class PersonasComponent implements OnInit {
  displayedColumns: string[] = ['id', 'email', 'telefono', 'estado'];
  dataSource = [];
  lista: Personas[] = [];
  constructor(private personaSrv: PersonasService) { }

  ngOnInit(): void {

    this.getPersonas('http://localhost:3000/Empleados');

  };
  getPersonas(url: string) {
    this.personaSrv.getPersonas(url).subscribe((data: any) => {

      const results = data;
      this.lista = [];
      this.lista = [...this.lista, ...results];
      this.dataSource = results;
    });
  };
}


