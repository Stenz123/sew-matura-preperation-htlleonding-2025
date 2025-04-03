import { Routes } from '@angular/router';
import {HomeComponent} from './home/home.component';
import {PlayerDetailComponent} from './player-detail/player-detail.component';
import {NotFoundComponent} from './not-found/not-found.component';
import {PlayerssComponent} from './playerss/playerss.component';
import {NewCardComponent} from './new-card/new-card.component';

export const routes: Routes = [
  {
    path: '',
    component: HomeComponent,
    title: 'Home',
  },
  {
    path: 'players',
    component: PlayerssComponent,
    title: 'Players'
  },
  {
    path: 'player/:id',
    component: PlayerDetailComponent,
    title: 'Player Detail'
  },
  {

    path: 'newCard',
    component: NewCardComponent,
    title: 'New Card'
  },
  {
    path: '**',
    component: NotFoundComponent,
    title: '404 Not Found'
  }
];
