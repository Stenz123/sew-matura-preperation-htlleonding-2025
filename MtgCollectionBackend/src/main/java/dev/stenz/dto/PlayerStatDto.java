package dev.stenz.dto;

import dev.stenz.card.Card;
import dev.stenz.collection.Collection;
import dev.stenz.deck.Deck;

import java.util.List;

public record PlayerStatDto (
        int id,
        String playerName,
        Card mostExpensiveCard,
        double totalCollectionPrice,
        List<Collection> collections,
        List<Deck> decks
){
}
