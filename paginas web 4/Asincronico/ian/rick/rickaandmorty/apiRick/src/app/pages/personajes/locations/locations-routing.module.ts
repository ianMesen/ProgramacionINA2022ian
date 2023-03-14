import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { DetalleLocationComponent } from './detalle-location/detalle-location.component';
import { LocationsComponent } from './locations.component';

const routes: Routes = [{ path: 'linkLocations', component: LocationsComponent },{
  path: 'linkDetalle', component: DetalleLocationComponent},
  {path: 'detalle/:id',component:DetalleLocationComponent}
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class LocationsRoutingModule { }
