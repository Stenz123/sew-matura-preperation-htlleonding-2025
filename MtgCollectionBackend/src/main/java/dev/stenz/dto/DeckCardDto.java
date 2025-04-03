package dev.stenz.dto;

import dev.stenz.card.Card;

public record DeckCardDto(
        int quantity,
        Card card
) {
}
