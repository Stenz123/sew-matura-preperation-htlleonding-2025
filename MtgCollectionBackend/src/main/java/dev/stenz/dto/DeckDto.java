package dev.stenz.dto;

import dev.stenz.card.Card;
import dev.stenz.card.DeckCard;

import java.util.List;

public record DeckDto(
        int id,
        String playerName,
        String deckName,
        List<DeckCardDto> cards,
        int numberOfCards,
        double averageConvertedManaCost,
        double totalPrice,
        double landCount
) {
}
