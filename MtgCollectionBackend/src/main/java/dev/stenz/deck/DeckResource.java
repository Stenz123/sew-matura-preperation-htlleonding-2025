package dev.stenz.deck;

import dev.stenz.dto.DeckDto;
import jakarta.inject.Inject;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;

import java.util.Comparator;
import java.util.List;

@Path("/api/deck")
public class DeckResource {
    @Inject
    DeckRepository deckRepository;

    @GET
    @Path("/{deckId}")
    @Produces(MediaType.APPLICATION_JSON)
    public DeckDto deckInfo(@PathParam("deckId") int id) {
        return deckRepository.getDeckOverview(id);
    }

    @GET
    @Path("/all")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Deck> allDecks() {
        List<Deck> decks = Deck.findAll().list();
        decks.sort(Comparator.comparing(deck -> deck.name));
        return decks;
    }
}
