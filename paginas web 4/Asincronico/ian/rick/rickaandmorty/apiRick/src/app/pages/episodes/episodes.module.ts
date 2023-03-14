import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { EpisodesRoutingModule } from './episodes-routing.module';
import { EpisodesComponent } from './episodes.component';
import { MaterialModule } from 'src/app/material.module';
import { DetalleEpisodeComponent } from './detalle-episode/detalle-episode.component';


@NgModule({
  declarations: [
    EpisodesComponent,
    DetalleEpisodeComponent
  ],
  imports: [
    CommonModule,
    EpisodesRoutingModule,
    MaterialModule
  ]
})
export class EpisodesModule { }
