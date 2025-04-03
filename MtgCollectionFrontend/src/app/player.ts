import {Card} from './card';
import {Collection} from './collection';

export interface Player {
  playerName: string;
  mostExpensiveCard: Card;
  id: number;
  totalCollectionPrice: number;
  collections: Collection[];
  decks: Collection[];
}
