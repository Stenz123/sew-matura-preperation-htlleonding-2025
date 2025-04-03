import {Component, inject, Input} from '@angular/core';
import {Card} from '../card';
import {DeckService} from '../deck.service';

@Component({
  selector: 'app-card',
  imports: [],
  templateUrl: './card.component.html',
  styleUrl: './card.component.css'
})
export class CardComponent {
  @Input() card!: Card
  @Input() quantity!: number
  @Input() deckId!: number
  deckService = inject(DeckService)

  increaseCard() {
    console.log("increase", this.card.id, this.deckId)
    this.deckService.increaseCard(this.card.id, this.deckId).subscribe()
  }

  decreaseCard() {
    console.log("decrease", this.card.id, this.deckId)
    this.deckService.decreaseCard(this.card.id, this.deckId).subscribe()
  }
}
