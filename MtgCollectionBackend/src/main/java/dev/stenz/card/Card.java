package dev.stenz.card;

import com.fasterxml.jackson.annotation.JsonIgnore;
import dev.stenz.collection.CollectionCard;
import io.quarkus.hibernate.orm.panache.PanacheEntity;
import jakarta.persistence.*;

import java.util.List;

@Entity
public class Card extends PanacheEntity {
    public String name;
    @Enumerated(EnumType.STRING)
    public CardType type;
    @Column(name = "mana_cost")
    public String manaCost;
    @Enumerated(EnumType.STRING)
    public Rarity rarity;

    public String uri;

    @Column(name = "converted_mana_cost")
    public int convertedManaCost;

    public int price;

    @OneToMany(mappedBy = "collectionCardId.card")
    @JsonIgnore
    public List<CollectionCard> collectionCards;

    @OneToMany(mappedBy = "deckCardId.card")
    @JsonIgnore
    public List<DeckCard> deckCards;
}
