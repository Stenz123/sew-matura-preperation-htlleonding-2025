package dev.stenz.player;

import dev.stenz.dto.PlayerStatDto;
import jakarta.inject.Inject;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;

import java.util.List;

@Path("/api/player")
public class PlayerResource {
    @Inject
    PlayerRepository playerRepository;

    @GET
    @Path("/all")
    @Produces(MediaType.APPLICATION_JSON)
    public List<PlayerStatDto> all() {
        List<Player> players = Player.findAll().list();
        return players.stream().map(player -> {
            return playerRepository.getPlayerInfo(player);
        }).toList();
    }

    @GET
    @Path("/{playerId}")
    @Produces(MediaType.APPLICATION_JSON)
    public PlayerStatDto getPlayerStats(@PathParam("playerId") int playerId) {
        Player player = Player.findById(playerId);
        return playerRepository.getPlayerInfo(player);
    }

    @POST
    @Path("/battle")
    @Produces(MediaType.APPLICATION_JSON)
    public String battle(@QueryParam("player1") int player1, @QueryParam("player2") int player2) {
        return playerRepository.battle(player1, player2);
    }
}
