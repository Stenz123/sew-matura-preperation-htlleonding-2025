package dev.stenz.dto;

import dev.stenz.card.Card;

import java.util.List;

public record DeckDto(
        String playerName,
        String deckName,
        List<Card> cards,
        int numberOfCards,
        double averageConvertedManaCost,
        double totalPrice,
        double landCount
) {
}
