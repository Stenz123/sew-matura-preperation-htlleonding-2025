package dev.stenz.dto;

import dev.stenz.card.Card;
import dev.stenz.card.CardType;
import dev.stenz.card.Rarity;

public record PostCardDto (
        String name,
        CardType cardType,
        String manaCost,
        Rarity rarity,
        String uri,
        double price
){
    public Card toCard() {
        Card card = new Card();
        card.name = name;
        card.type = cardType;
        card.manaCost = manaCost;
        card.rarity = rarity;
        card.uri = uri;
        card.price = price;
        return card;
    }

}
