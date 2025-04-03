import {Component, inject, Input} from '@angular/core';
import {Card} from '../card';
import {PlayerService} from '../player.service';
import {ActivatedRoute, Router} from '@angular/router';
import {Player} from '../player';
import {DeckService} from '../deck.service';
import {Deck} from '../deck';
import {CardComponent} from '../card/card.component';
import {Observable} from 'rxjs';

@Component({
  selector: 'app-deck',
  imports: [
    CardComponent
  ],
  templateUrl: './deck.component.html',
  styleUrl: './deck.component.css'
})
export class DeckComponent {
  @Input() deckId!: number;
  deckService = inject(DeckService)
  router = inject(Router)
  deck: Deck | undefined

  deckWebsocket: Observable<Deck>|undefined = undefined

  showCards = false;

  public ngOnInit() {
    this.deckService.getDeckById(this.deckId).subscribe(deck => {
      this.deck = deck
    })
    this.deckWebsocket = this.deckService.socketObserver()
    this.deckWebsocket.subscribe((deck) => {
      console.log(deck)
      this.deckService.insertFromWebsocket(deck)
      if (deck.id == this.deckId) {
        this.deck = deck
      }
    });
  }

  toggleCardsVisibility() {
    this.showCards = !this.showCards;
  }

}
