import "bootstrap";
import { initSendPosition } from "../plugins/geoloc.js";
import { openNav } from '../components/sidebaropen';
import { closeNav } from '../components/sidebarclose';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { addIndicatif } from '../components/phonenumber';
import { animationStop } from '../components/bmstopbutton';


openNav();
closeNav();
animationStop();
initMapbox();
initSendPosition();
addIndicatif();
