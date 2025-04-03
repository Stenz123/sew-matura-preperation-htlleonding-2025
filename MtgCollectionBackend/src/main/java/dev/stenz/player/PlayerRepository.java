package dev.stenz.player;

import dev.stenz.dto.PlayerStatDto;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.ws.rs.NotFoundException;

import java.util.Comparator;

@ApplicationScoped
public class PlayerRepository {
    public PlayerStatDto getPlayerInfo(int playerId) {
        Player player = Player.findById(playerId);

        if (player == null) throw new NotFoundException("Player not found");

        return new PlayerStatDto(
                player.name,
                player.collections.stream().flatMap(collection -> collection.collectionCards.stream().map(collectionCard -> collectionCard.collectionCardId.card)).max(
                        Comparator.comparingDouble(card -> card.price)
                ).orElse(null),
                player.collections.stream().flatMap(collection -> collection.collectionCards.stream()).mapToDouble(card -> card.quantity * card.collectionCardId.card.price).sum(),
                player.collections,
                player.decks
        );
    }
}
