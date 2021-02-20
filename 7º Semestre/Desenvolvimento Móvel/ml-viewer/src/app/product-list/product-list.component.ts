import { Component, OnInit } from '@angular/core';
import { ProductSearchListUpdateService } from '../product-search-list-update.service';
import { Observable } from 'rxjs';

@Component({
  selector: 'app-product-list',
  templateUrl: './product-list.component.html',
  styleUrls: ['./product-list.component.css']
})
export class ProductListComponent implements OnInit {

  searchTerm: string;
  productList: any;

  constructor(private productSearchListUpdateService: ProductSearchListUpdateService) { }

  ngOnInit() {
    this.productSearchListUpdateService.change.subscribe((result: Observable<Object>) => {
      this.searchTerm = this.productSearchListUpdateService.searchTerm;
      result.subscribe(res => {
        this.productList = res.results;
      });
    });
  }

}
