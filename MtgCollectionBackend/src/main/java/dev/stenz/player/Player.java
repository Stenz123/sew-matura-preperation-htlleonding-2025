package dev.stenz.player;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import dev.stenz.collection.Collection;
import dev.stenz.deck.Deck;
import io.quarkus.hibernate.orm.panache.PanacheEntity;
import jakarta.persistence.Entity;
import jakarta.persistence.OneToMany;

import java.util.List;

@Entity
public class Player extends PanacheEntity {
    public String name;


    @OneToMany(mappedBy = "player")
    @JsonIgnoreProperties({"player", "collectionCards"})
    @JsonIgnore
    public List<Collection> collections;

    @OneToMany(mappedBy = "player")
    @JsonIgnoreProperties({"player", "deckCards"})
    List<Deck> decks;
}
