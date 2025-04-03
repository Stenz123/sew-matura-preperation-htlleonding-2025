import {Component, inject, Input} from '@angular/core';
import {Router} from '@angular/router';
import {DeckService} from '../deck.service';
import {Deck} from '../deck';
import {CardComponent} from '../card/card.component';
import {Observable} from 'rxjs';
import {FormBuilder, ReactiveFormsModule, Validators} from '@angular/forms';
import {CardService} from '../card.service';
import {CardList} from '../card-list';
import {MatCard, MatCardActions, MatCardContent, MatCardHeader, MatCardTitle} from '@angular/material/card';
import {MatFormField} from '@angular/material/form-field';
import {MatOption, MatSelect} from '@angular/material/select';
import {MatButton} from '@angular/material/button';

@Component({
  selector: 'app-deck',
  imports: [
    CardComponent,
    ReactiveFormsModule,
    MatCard,
    MatCardContent,
    MatFormField,
    MatSelect,
    MatOption,
    MatCardActions,
    MatButton,
  ],
  templateUrl: './deck.component.html',
  styleUrl: './deck.component.css'
})
export class DeckComponent {
  @Input() deckId!: number;
  deckService = inject(DeckService)
  cardService = inject(CardService)
  router = inject(Router)
  deck: Deck | undefined

  deckWebsocket: Observable<Deck>|undefined = undefined

  showCards = false;

  private fb = inject(FormBuilder);
  cardForm = this.fb.group({
    card: [null, Validators.required],
  });

  cards: CardList[] = []

  onSubmit() {
      let cardId = this.cardForm.value.card
      this.deckService.addCard(this.deckId, cardId).subscribe()
  }

  public ngOnInit() {
    this.deckService.getDeckById(this.deckId).subscribe(deck => {
      this.deck = deck
    })
    this.cardService.getCards().subscribe(cards => {
      this.cards = cards
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
