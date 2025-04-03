package dev.stenz.card;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
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
