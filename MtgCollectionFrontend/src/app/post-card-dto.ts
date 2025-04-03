import {Rarity} from './rarity';
import {CardType} from './card-type';

export interface PostCardDto {
  name: string;
  cardType: CardType;
  manaCost: string;
  rarity: Rarity;
  uri: string;
  price: number;
}
