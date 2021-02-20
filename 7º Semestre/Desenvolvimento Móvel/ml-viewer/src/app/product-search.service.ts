import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ProductSearchService {
  private baseApiUrl = "https://api.mercadolibre.com/";

  constructor(private httpClient: HttpClient) { }

  public searchForProducts(searchParam: string) {
    console.log('ProductService > searchForProducts (before returning)');
    return this.httpClient.get(this.baseApiUrl + 'sites/MLB/search?q=' + searchParam);
  }
}
