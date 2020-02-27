import "bootstrap";
import { initSendPosition } from "../plugins/geoloc.js";
import { openNav } from '../components/sidebaropen';
import { closeNav } from '../components/sidebarclose';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { addIndicatif } from '../components/phonenumber';
import { animation } from '../scripts/index';


openNav();
closeNav();
animation();
initMapbox();
initSendPosition();
addIndicatif();

