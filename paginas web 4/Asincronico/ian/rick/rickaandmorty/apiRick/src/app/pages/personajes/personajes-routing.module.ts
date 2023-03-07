import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { DetallePersonajeComponent } from './detalle-personaje/detalle-personaje.component';
import { ListaCardsComponent } from './lista-cards/lista-cards.component';
import { PersonajesComponent } from './personajes.component';

const routes: Routes = [{ path: 'linkPersonajes', component: PersonajesComponent },
{path: 'listaCards',component:ListaCardsComponent},
{path: 'detalle/:id',component:DetallePersonajeComponent}

];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class PersonajesRoutingModule { }
