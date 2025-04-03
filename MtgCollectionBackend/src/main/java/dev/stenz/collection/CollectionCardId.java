package dev.stenz.collection;

import dev.stenz.card.Card;
import jakarta.persistence.Embeddable;
import jakarta.persistence.ManyToOne;

import java.io.Serializable;

@Embeddable
public class CollectionCardId implements Serializable {
    @ManyToOne
    public Card card;
    @ManyToOne
    public Collection collection;
}
