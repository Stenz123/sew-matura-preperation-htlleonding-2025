export interface Card {
  id: number;
  name: string;
  type: string;
  manaCost: string;
  rarity: string;
  convertedManaCost: number;
  price: number;
  uri: string;
}
