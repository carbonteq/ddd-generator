---
to: HTTP/Bootstrap/app.ts
---
import "reflect-metadata";
import * as express from 'express';
import * as bodyParser from 'body-parser';
import * as cors from 'cors';
import * as logger from 'morgan';
import {createServer} from "http";
import helmet from "helmet";

//component

const app = express();

app.use(bodyParser.urlencoded({limit: '50mb', parameterLimit: 100000, extended: true}));
app.use(bodyParser.json());
app.use(cors());
app.use(express.urlencoded({extended: false}));
app.use(logger('dev'));
app.use(helmet());
app.disable('x-powered-by');

//routes

const httpServer = createServer(app);

export default httpServer;