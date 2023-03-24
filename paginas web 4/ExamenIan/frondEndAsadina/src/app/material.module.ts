

import { NgModule } from "@angular/core";

import { MatTableModule} from "@angular/material/table";

import { MatButtonModule } from "@angular/material/button";

const mylistMaterialModules=[ 
  
    MatTableModule,

    MatButtonModule

    ];

@NgModule({

imports:[...mylistMaterialModules],
exports:[...mylistMaterialModules]

})
export class MaterialModule{}