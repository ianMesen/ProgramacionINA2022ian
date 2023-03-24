import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

const routes: Routes = [ { path: 'Empleados', loadChildren: () => import('./pages/empleados/empleados.module').then(m => m.EmpleadosModule) }, { path: 'personas', loadChildren: () => import('./pages/personas/personas.module').then(m => m.PersonasModule) }, { path: 'puestos', loadChildren: () => import('./pages/puestos/puestos.module').then(m => m.PuestosModule) }];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
