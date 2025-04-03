package dev.stenz.player;

import dev.stenz.dto.PlayerStatDto;
import jakarta.inject.Inject;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;

import java.util.List;

@Path("/api/player")
public class PlayerResource {
    @Inject
    PlayerRepository playerRepository;

    @GET
    @Path("/all")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Player> all() {
        return Player.findAll().list();
    }

    @GET
    @Path("/{playerId}/stats")
    @Produces(MediaType.APPLICATION_JSON)
    public PlayerStatDto getPlayerStats(@PathParam("playerId") int playerId) {
        return playerRepository.getPlayerInfo(playerId);
    }

}
