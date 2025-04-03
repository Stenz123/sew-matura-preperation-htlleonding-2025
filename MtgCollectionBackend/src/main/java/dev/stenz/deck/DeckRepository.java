package dev.stenz.deck;

import dev.stenz.card.CardType;
import dev.stenz.dto.DeckCardDto;
import dev.stenz.dto.DeckDto;
import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.ws.rs.NotFoundException;

import java.util.List;

@ApplicationScoped
public class DeckRepository implements PanacheRepository<Deck> {
    public DeckDto getDeckOverview(int deckId){
        Deck deck = Deck.findById(deckId);
        if (deck == null) throw new NotFoundException();

        List<DeckCardDto> deckCards = deck.deckCards.stream()
                .map((deckCard ->
                        new DeckCardDto(deckCard.quantity, deckCard.deckCardId.card)
                )).toList();

        int numberOfCards = deckCards.stream().map(DeckCardDto::quantity).mapToInt(Integer::intValue).sum();
        double totalPrice = deckCards.stream().mapToDouble(deckCardDto -> deckCardDto.card().price).sum();
        double averageConvertedManaCost = 0.0;
        if (numberOfCards != 0) {
            averageConvertedManaCost = deckCards.stream()
                    .mapToDouble(deckCard -> deckCard.card().convertedManaCost * deckCard.quantity())
                    .sum() / (double) numberOfCards;
        }
        int landCount = (int) deckCards.stream().filter(deckCardDto -> deckCardDto.card().type == CardType.LAND).mapToDouble(DeckCardDto::quantity).sum();

        return new DeckDto(
                deck.id.intValue(),
                deck.player.name,
                deck.name,
                deck.deckCards.stream().map(deckCard ->new DeckCardDto(deckCard.quantity, deckCard.deckCardId.card)).toList(),
                numberOfCards,
                averageConvertedManaCost,
                totalPrice,
                landCount
        );
    }
}
