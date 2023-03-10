import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { LocationsRoutingModule } from './locations-routing.module';
import { LocationsComponent } from './locations.component';
import { MaterialModule } from 'src/app/material.module';

import { DetalleLocationComponent } from './detalle-location/detalle-location.component';

@NgModule({
  declarations: [
    LocationsComponent,
    
    DetalleLocationComponent

  ],
  imports: [
    CommonModule,
    LocationsRoutingModule,
    MaterialModule

  ]
})
export class LocationsModule { }
