package dev.stenz.card;

import dev.stenz.card.DeckCard;
import dev.stenz.deck.Deck;
import dev.stenz.deck.DeckRepository;
import dev.stenz.websocket.DeckWebsocket;
import jakarta.inject.Inject;
import jakarta.ws.rs.NotFoundException;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;

@Path("/api/card")
public class CardResource{
    @Inject
    DeckCardRepository deckCardRepository;

    @Inject
    DeckRepository deckRepository;

    @POST
    @Path("/decrease/{cardId}/{deckId}")
    public void decreaseCard(@PathParam("cardId") int cardId, @PathParam("deckId") int deckId) {
        deckCardRepository.decreaseCard(deckId, cardId);
        DeckWebsocket.broadcastDeck(deckRepository.getDeckOverview(deckId));
    }

    @POST
    @Path("/increase/{cardId}/{deckId}")
    public void increaseCard(@PathParam("cardId") int cardId, @PathParam("deckId") int deckId) {
        deckCardRepository.increaseCard(deckId, cardId);
        DeckWebsocket.broadcastDeck(deckRepository.getDeckOverview(deckId));
    }
}
