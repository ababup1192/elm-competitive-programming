import { Elm } from './Main.elm'
import * as fs from 'fs';

const inputs = fs.readFileSync("/dev/stdin", "utf8")

const app = Elm.Main.init({flags: inputs.trim().split('\n')});

app.ports.submit.subscribe(res => { console.log(res); });
