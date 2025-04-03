package dev.stenz.card;

import dev.stenz.deck.Deck;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.enterprise.context.Initialized;
import jakarta.inject.Inject;
import jakarta.persistence.EntityManager;
import jakarta.transaction.Transactional;
import jakarta.ws.rs.NotFoundException;

@ApplicationScoped
public class DeckCardRepository {
    @Inject
    EntityManager entityManager;

    @Transactional
    public void decreaseCard(int deckId, int cardId) {
        DeckCard deckCard = entityManager.createQuery(
                "SELECT dc FROM DeckCard dc WHERE dc.deckCardId.deck.id = :deckId AND dc.deckCardId.card.id = :cardId", DeckCard.class)
                .setParameter("deckId", deckId)
                .setParameter("cardId", cardId)
                .getSingleResult();
        if (deckCard != null) {
            if (deckCard.quantity > 1) {
                deckCard.quantity--;
                entityManager.merge(deckCard);
            } else {
                entityManager.remove(deckCard);
            }
        } else {
            throw new NotFoundException("DeckCard not found");
        }
    }

    @Transactional
    public void increaseCard(int deckId, int cardId) {
        DeckCard deckCard = entityManager.createQuery(
                "SELECT dc FROM DeckCard dc WHERE dc.deckCardId.deck.id = :deckId AND dc.deckCardId.card.id = :cardId", DeckCard.class)
                .setParameter("deckId", deckId)
                .setParameter("cardId", cardId)
                .getSingleResult();
        if (deckCard != null) {
            if (deckCard.quantity < 4) {
                deckCard.quantity++;
                entityManager.merge(deckCard);
            }
        } else {
            throw new NotFoundException("DeckCard not found");
        }
    }
}
