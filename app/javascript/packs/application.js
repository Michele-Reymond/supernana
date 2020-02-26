import "bootstrap";
import { initSendPosition } from "../plugins/geoloc.js";
import { openNav } from '../components/sidebaropen';
import { closeNav } from '../components/sidebarclose';
import { addIndicatif } from '../components/phonenumber';

openNav();
closeNav();
initSendPosition();
addIndicatif();

