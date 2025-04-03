package dev.stenz.player;

import dev.stenz.deck.Deck;
import dev.stenz.dto.PlayerStatDto;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.ws.rs.NotFoundException;

import java.util.Comparator;

@ApplicationScoped
public class PlayerRepository {
    public PlayerStatDto getPlayerInfo(Player player) {
        if (player == null) throw new NotFoundException("Player not found");

        return new PlayerStatDto(
                player.id.intValue(),
                player.name,
                player.collections.stream().flatMap(collection -> collection.collectionCards.stream().map(collectionCard -> collectionCard.collectionCardId.card)).max(
                        Comparator.comparingDouble(card -> card.price)
                ).orElse(null),
                player.collections.stream().flatMap(collection -> collection.collectionCards.stream()).mapToDouble(card -> card.quantity * card.collectionCardId.card.price).sum(),
                player.collections,
                player.decks
        );
    }

    public String battle(int player1Id, int player2Id) {
        Player player1 = Player.findById(player1Id);
        Player player2 = Player.findById(player2Id);

        if (player1 == null || player2 == null) throw new NotFoundException("Player not found");

        Deck deck1 = player1.randomDeck();
        Deck deck2 = player2.randomDeck();

        boolean won = Math.random() < 0.5;
        if (won) {
            player1.wins++;
            player1.persist();
            return "Player " + player1.name + " wins with deck " + deck1.name + " against " + player2.name + " with deck " + deck2.name;
        } else {
            player2.wins++;
            player2.persist();
            return "Player " + player2.name + " wins with deck " + deck2.name + " against " + player1.name + " with deck " + deck1.name;
        }
    }
}
