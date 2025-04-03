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

    public double price;

    @OneToMany(mappedBy = "collectionCardId.card")
    @JsonIgnore
    public List<CollectionCard> collectionCards;

    @OneToMany(mappedBy = "deckCardId.card")
    @JsonIgnore
    public List<DeckCard> deckCards;

    public static boolean isValidManaCost(String manaCost) {
        return manaCost.matches("^(?:\\d+|[WUBRGXCS]|[WUBRG]/[WUBRG]|2/[WUBRG]|[WUBRG]/P)+$");
    }
    public static int manaCostToConvertedManacost(String manaCost) {
        if (manaCost == null || manaCost.isEmpty()) {
            return 0;
        }
        int index = manaCost.length()-1;
        int res = 0;
        while (index >= 0) {
            char c = manaCost.charAt(index);
            if (Character.isAlphabetic(c)) {
                res++;
                index--;
            } else {
                res += Integer.parseInt(manaCost.substring(0, index+1));
                break;
            }
        }
        return res;
    }
}
