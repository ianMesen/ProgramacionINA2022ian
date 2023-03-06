import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

const routes: Routes=[
  { 
    path: 'locations',
    loadChildren:()=>import('./pages/personajes/locations/locations.module').then(m => m.LocationsModule)
  },
  {
  path: 'personajes', 
  loadChildren: () => import('./pages/personajes/personajes.module').then(m => m.PersonajesModule) 
  },
  { path: 'episodes', loadChildren: () => import('./pages/episodes/episodes.module').then(m => m.EpisodesModule) }
];


@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
