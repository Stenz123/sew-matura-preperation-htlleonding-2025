import { waitForAsync, ComponentFixture, TestBed } from '@angular/core/testing';

import { PlayerssComponent } from './playerss.component';

describe('PlayerssComponent', () => {
  let component: PlayerssComponent;
  let fixture: ComponentFixture<PlayerssComponent>;

  beforeEach(() => {
    fixture = TestBed.createComponent(PlayerssComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should compile', () => {
    expect(component).toBeTruthy();
  });
});
