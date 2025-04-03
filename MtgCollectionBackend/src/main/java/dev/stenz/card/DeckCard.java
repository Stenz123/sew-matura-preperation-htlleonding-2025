package dev.stenz.card;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "deck_card")
public class DeckCard {
    @EmbeddedId
    public DeckCardId deckCardId;
    public int quantity;
}
