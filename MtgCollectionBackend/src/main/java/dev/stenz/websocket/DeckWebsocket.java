package dev.stenz.websocket;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import dev.stenz.dto.DeckDto;
import jakarta.websocket.*;
import jakarta.websocket.server.PathParam;
import jakarta.websocket.server.ServerEndpoint;

import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

@ServerEndpoint("/ws/decks")
public class DeckWebsocket {
    private static final Set<Session> sessions = new CopyOnWriteArraySet<>();

    @OnOpen
    public void onOpen(Session session) {
        sessions.add(session);
    }

    @OnClose
    public void onClose(Session session) {
        sessions.remove(session);
    }

    @OnError
    public void onError(Session session, @PathParam("name") String name, Throwable throwable) {
        System.out.println("onError> " + name + ": " + throwable);
    }

    @OnMessage
    public void onMessage(String message, @PathParam("name") String name) {
        //Handle incoming messages if needed
    }


    public static void broadcastDeck(DeckDto deck) {
        try {
            ObjectMapper objectMapper = new ObjectMapper();
            for(Session currSession : sessions) {
                currSession.getAsyncRemote().sendText(objectMapper.writeValueAsString(deck));
            }
        } catch (JsonProcessingException e) {
            System.out.println("Exception occddurred: " + e);
        }
    }
}