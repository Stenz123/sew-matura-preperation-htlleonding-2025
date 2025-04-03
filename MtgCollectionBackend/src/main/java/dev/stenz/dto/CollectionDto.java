package dev.stenz.dto;

import dev.stenz.card.Card;
import dev.stenz.collection.Collection;

import java.util.List;

public record CollectionDto(
        int id,
        String name,
        List<Card> cards
){
    public static CollectionDto from(Collection collection) {
        return new CollectionDto(
                collection.id.intValue(),
                collection.name,
                collection.collectionCards.stream().map(collectionCard -> collectionCard.collectionCardId.card).toList()
        );
    }
}
