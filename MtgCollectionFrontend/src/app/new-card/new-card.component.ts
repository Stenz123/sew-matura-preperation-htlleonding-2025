import {Component, inject} from '@angular/core';

import {FormBuilder, ReactiveFormsModule, Validators} from '@angular/forms';
import {MatInputModule} from '@angular/material/input';
import {MatButtonModule} from '@angular/material/button';
import {MatSelectModule} from '@angular/material/select';
import {MatRadioModule} from '@angular/material/radio';
import {MatCardModule} from '@angular/material/card';
import {CardType} from '../card-type';
import {Rarity} from '../rarity';
import {CardService} from '../card.service';
import {PostCardDto} from '../post-card-dto';
import {Router} from '@angular/router';
import {HomeComponent} from '../home/home.component';


@Component({
  selector: 'app-new-card',
  templateUrl: './new-card.component.html',
  styleUrl: './new-card.component.css',
  imports: [
    MatInputModule,
    MatButtonModule,
    MatSelectModule,
    MatRadioModule,
    MatCardModule,
    ReactiveFormsModule
  ]
})
export class NewCardComponent {
  private fb = inject(FormBuilder);
  cardForm = this.fb.group({
    name: [null, Validators.required],
    cardType: [null, Validators.required],
    manaCost: [null,Validators.compose([Validators.required, Validators.pattern(RegExp("^(?:\\d+|[WUBRGXCS]|[WUBRG]/[WUBRG]|2/[WUBRG]|[WUBRG]/P)+$"))])
    ],
    rarity: [null, Validators.required],
    uri: null,
    price: [null, Validators.compose([
      Validators.required, Validators.min(0)])
    ],
  });
  cardService = inject(CardService)
  router = inject(Router)

  cardTypes = Object.values(CardType);
  rarities = Object.values(Rarity);


  onSubmit(): void {
    if (!this.cardForm.invalid) {
      let postCard: PostCardDto = {
        name: this.cardForm.value.name!,
        cardType: this.cardForm.value.cardType!,
        manaCost: this.cardForm.value.manaCost!,
        rarity: this.cardForm.value.rarity!,
        uri: this.cardForm.value.uri!,
        price: this.cardForm.value.price!
      };
      this.cardService.postCard(postCard).subscribe(response => {
        console.log('Card posted successfully', response);
        this.router.navigate(['']);
      }, error => {
        console.error('Error posting card', error);
      });
    }
  }
}
