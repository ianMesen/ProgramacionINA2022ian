import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DetalleLocationComponent } from './detalle-location.component';

describe('DetalleLocationComponent', () => {
  let component: DetalleLocationComponent;
  let fixture: ComponentFixture<DetalleLocationComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ DetalleLocationComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(DetalleLocationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
