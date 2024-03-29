import cors = require("cors");
import express = require("express");
import helmet from "helmet";
import { AppDataSource } from "./data-source"

import routes from "./routes";

const Port = process.env.port || 3000;

AppDataSource.initialize().then(async () => {

    // create express app
    const app = express();
    app.use(express.json())
    app.use(cors());
    app.use(helmet());
    app.use('/', routes)


    // start express server
    app.listen(Port, () => { console.log(`Servidor corriendo puerto ${Port}`) })
    // console.log("Express server has started on port 3000. Open http://localhost:3000/ to see results")

}).catch(error => console.log(error))
