import {inject, Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Player} from './player';
import {EMPTY, Observable} from 'rxjs';
import {map} from 'rxjs/operators';
import {Deck} from './deck';
import {WebSocketSubject} from 'rxjs/internal/observable/dom/WebSocketSubject';
import {webSocket} from 'rxjs/webSocket';
import {Option} from '@angular/cli/src/command-builder/utilities/json-schema';

@Injectable({
  providedIn: 'root'
})
export class DeckService {
  private readonly socket! :WebSocketSubject<Deck>;
  httpClient = inject(HttpClient)

  BASE_URL = "http://localhost:8080/api"

  decks: Deck[] = []

  getDeckById(id: number):Observable<Deck> {
    return this.httpClient.get<Deck>(`${this.BASE_URL}/deck/${id}`).pipe(map(res => {
      return this.insertDeck(res)
    }))
  }

  decreaseCard(cardId: number, deckId: number) {
    return this.httpClient.post<void>(`${this.BASE_URL}/card/decrease/${cardId}/${deckId}`, {})
  }
  increaseCard(cardId: number, deckId: number) {
    return this.httpClient.post<void>(`${this.BASE_URL}/card/increase/${cardId}/${deckId}`, {})
  }

  insertDeck(res: Deck) {
    const deck = this.decks.find(it => it.id == res.id)
    if (deck != undefined) {
      return deck;
    } else {
      this.decks.push(res)
      return res
    }
  }

  insertFromWebsocket(deck: Deck) {
    const de = this.decks.find(it => it.id == deck.id)
    if (de != undefined) {
      this.decks = this.decks.filter(it => it.id != deck.id)
      this.decks.push(de)
    }
  }

  constructor() {
    if(typeof WebSocket !== 'undefined') {
      this.socket = webSocket('ws://localhost:8080/ws/decks');
    }
  }

  socketObserver():Observable<Deck> {
    let result : Observable<Deck> = EMPTY;
    if(this.socket) {
      result = this.socket?.asObservable();
    }
    return result;
  }
}
