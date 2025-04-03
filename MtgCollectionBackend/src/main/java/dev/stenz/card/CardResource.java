package dev.stenz.card;

import dev.stenz.card.DeckCard;
import dev.stenz.deck.Deck;
import dev.stenz.deck.DeckRepository;
import dev.stenz.dto.CardListDto;
import dev.stenz.dto.PostCardDto;
import dev.stenz.websocket.DeckWebsocket;
import jakarta.inject.Inject;
import jakarta.transaction.Transactional;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import org.jboss.resteasy.annotations.Body;

import java.util.List;

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

    @GET
    @Path("/all")
    @Produces(MediaType.APPLICATION_JSON)
    public List<CardListDto> allCards() {
        List<Card> cards = Card.listAll();
        return cards.stream().map(CardListDto::fromCard).toList();
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Transactional
    public Response newCard(PostCardDto card) {
        if (card.name() == null || card.name().isEmpty()) {
            return Response.status(Response.Status.BAD_REQUEST).entity("Name is required").build();
        }
        if (card.cardType() == null) {
            return Response.status(Response.Status.BAD_REQUEST).entity("Card type is required").build();
        }
        if (card.manaCost() == null || !Card.isValidManaCost(card.manaCost())) {
            return Response.status(Response.Status.BAD_REQUEST).entity("Invalid mana cost").build();
        }
        if (card.rarity() == null) {
            return Response.status(Response.Status.BAD_REQUEST).entity("Rarity is required").build();
        }
        if (card.price() <= 0) {
            return Response.status(Response.Status.BAD_REQUEST).entity("Price must be greater than 0").build();
        }
        Card newCard = card.toCard();
        newCard.persist();
        return Response.status(Response.Status.CREATED).entity(newCard).build();
    }

}
