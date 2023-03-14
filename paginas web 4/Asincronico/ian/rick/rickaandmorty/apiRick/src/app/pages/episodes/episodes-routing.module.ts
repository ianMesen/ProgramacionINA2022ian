import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { DetalleEpisodeComponent } from './detalle-episode/detalle-episode.component';
import { EpisodesComponent } from './episodes.component';

const routes: Routes = [{ path: 'linkEpisodes', component: EpisodesComponent },{
  path: 'linkDetalle', component: DetalleEpisodeComponent},
  {path: 'detalle/:id',component:DetalleEpisodeComponent}

];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class EpisodesRoutingModule { }
