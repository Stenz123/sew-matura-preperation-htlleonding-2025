import {inject, Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Player} from './player';
import {Observable} from 'rxjs';
import {map} from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class PlayerService {
  httpClient = inject(HttpClient)

  BASE_URL = "http://localhost:8080/api"

  players: Player[] = []

  getPlayers():Observable<Player[]> {
    return this.httpClient.get<Player[]>(`${this.BASE_URL}/player/all`).pipe(map(res => {
      return res.map(it => {
        return this.insertPlayer(it)
      })
    }))
  }

  getPlayer(id: number):Observable<Player> {
    return this.httpClient.get<Player>(`${this.BASE_URL}/player/${id}`).pipe(map(res => {
      return this.insertPlayer(res)
    }))
  }

  private insertPlayer(res: Player) {
    const player = this.players.find(it => it.id == res.id)
    if (player != undefined) {
      return player;
    } else {
      this.players.push(res)
      return res
    }
  }

  battle(player1: Player, player2: Player) {
    this.httpClient.post<Player>(`${this.BASE_URL}/battle`, {player1, player2})
  }

  constructor() { }
}
