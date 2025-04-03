import {Card} from './card';
import {DeckCard} from './deck-card';

export interface Deck {
  id: number;
  numberOfCards: number;
  averageConvertedManaCost: number;
  totalPrice: number;
  landCount: number;
  playerName: string;
  deckName: string;
  cards: DeckCard[]
}
