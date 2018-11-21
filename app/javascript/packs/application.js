import "bootstrap";

import { addEventListenerforAccordionTab } from '../layouts/accordion';
import { addEventListenerToEmptyTick } from './profile';
import { addEventListenerToTabs } from './profile';
import { disableButton } from '../guards/button_unavailable';
import { addEventListenerShowMore } from './profile';

addEventListenerforAccordionTab();
addEventListenerToEmptyTick();
addEventListenerToTabs();
disableButton();
addEventListenerShowMore();

