package dev.stenz.dto;

import dev.stenz.card.Card;

public record CardListDto(
        int id,
        String name
) {
    public static CardListDto fromCard(Card card) {
        return new CardListDto(card.id.intValue(), card.name);
    }
}
