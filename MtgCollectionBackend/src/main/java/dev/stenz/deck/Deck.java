package dev.stenz.deck;

import com.fasterxml.jackson.annotation.JsonIgnore;
import dev.stenz.card.DeckCard;
import dev.stenz.player.Player;
import io.quarkus.hibernate.orm.panache.PanacheEntity;
import jakarta.persistence.Entity;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;

import java.util.List;

@Entity
public class Deck extends PanacheEntity {
    public String name;

    @ManyToOne
    @JsonIgnore
    public Player player;

    @OneToMany(mappedBy = "deckCardId.deck")
    @JsonIgnore
    public List<DeckCard> deckCards;
}
