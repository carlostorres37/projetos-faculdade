import { Component, OnInit } from '@angular/core';
import { ProductSearchListUpdateService } from '../product-search-list-update.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {
  
  constructor(private productSearchListUpdateService: ProductSearchListUpdateService,
    private router: Router) { }

  ngOnInit() {
  }

  searchProduct(searchTerm) {
    console.log('Header > updateItems (before)');
    this.productSearchListUpdateService.updateItems(searchTerm.value);
    console.log('Header > updateItems (after)');
  }
}
