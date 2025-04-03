import {inject, Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Card} from './card';
import {Observable} from 'rxjs';
import {Player} from './player';
import {map} from 'rxjs/operators';
import {PostCardDto} from './post-card-dto';
import {CardList} from './card-list';

@Injectable({
  providedIn: 'root'
})
export class CardService {
  httpClient = inject(HttpClient)

  BASE_URL = "http://localhost:8080/api"

  getCards():Observable<CardList[]> {
    return this.httpClient.get<CardList[]>(`${this.BASE_URL}/card/all`)
  }

  public postCard(card: PostCardDto) {
    return this.httpClient.post<Card>(`${this.BASE_URL}/card`, card)
  }

  constructor() { }
}
