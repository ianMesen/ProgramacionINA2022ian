
import { NgModule } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';
import { MatMenuModule } from '@angular/material/menu';

const mylistMaterialModules=[MatButtonModule,
    MatIconModule,
    MatButtonModule,
    MatMenuModule
];

@NgModule({

    imports: [...mylistMaterialModules],
    exports: [...mylistMaterialModules]
  })
  export class MaterialModule{}