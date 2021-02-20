import { Injectable, Output, EventEmitter } from '@angular/core';
import { ProductSearchService } from './product-search.service';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ProductSearchListUpdateService {
  @Output() change: EventEmitter<Observable<Object>> = new EventEmitter();
  public searchTerm: string;

  constructor(private productSearchService: ProductSearchService) { }

  updateItems(searchTerm: string) {
    console.log('UpdateService > updateItems emit(before)');
    this.searchTerm = searchTerm;
    this.change.emit(
      this.productSearchService.searchForProducts(searchTerm)
    );
    console.log('UpdateService > updateItems emit(after)');
  }
}
