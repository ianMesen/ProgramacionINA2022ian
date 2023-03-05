

import { NgModule } from "@angular/core";
import { MatMenuModule } from "@angular/material/menu";
import { MatCardModule} from "@angular/material/card";
import { MatTableModule} from "@angular/material/table";
import { MatPaginatorModule} from "@angular/material/paginator";
import { MatButtonModule } from "@angular/material/button";

const mylistMaterialModules=[ 
    MatMenuModule,
    MatCardModule,
    MatTableModule,
    MatPaginatorModule,
    MatButtonModule

    ];

@NgModule({

imports:[...mylistMaterialModules],
exports:[...mylistMaterialModules]

})
export class MaterialModule{}