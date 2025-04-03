package dev.stenz.collection;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "collection_card")
public class CollectionCard {
    @EmbeddedId
    public CollectionCardId collectionCardId;
    public int quantity;
}
