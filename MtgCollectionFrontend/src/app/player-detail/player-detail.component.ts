import {Component, inject} from '@angular/core';
import {Player} from '../player';
import {PlayerService} from '../player.service';
import {ActivatedRoute, Router} from '@angular/router';
import {of} from 'rxjs';
import {DeckComponent} from '../deck/deck.component';

@Component({
  selector: 'app-player-detail',
  imports: [
    DeckComponent
  ],
  templateUrl: './player-detail.component.html',
  styleUrl: './player-detail.component.css'
})
export class PlayerDetailComponent {
  playerService = inject(PlayerService)
  route : ActivatedRoute = inject(ActivatedRoute);
  router: Router = inject(Router);

  playerId: number = -1;
  player: Player | undefined

  public constructor() {
    this.playerId = this.route.snapshot.params['id'];
    this.playerService.getPlayer(this.playerId).subscribe(player => {
      if (player == null) {
        this.router.navigate(['/not-found'])
      }
      this.player = player
    },
      error => {
        this.router.navigate(['/not-found'])
    })

  }

  protected readonly of = of;
}
