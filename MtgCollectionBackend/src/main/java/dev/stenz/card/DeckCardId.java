package dev.stenz.card;

import dev.stenz.deck.Deck;
import jakarta.persistence.Embeddable;
import jakarta.persistence.ManyToOne;

import java.io.Serializable;

@Embeddable
public class DeckCardId implements Serializable {
    @ManyToOne
    public Card card;
    @ManyToOne
    public Deck deck;
}
