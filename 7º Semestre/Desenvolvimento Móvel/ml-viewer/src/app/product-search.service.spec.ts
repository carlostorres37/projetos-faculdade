import { TestBed, inject } from '@angular/core/testing';

import { ProductSearchService } from './product-search.service';

describe('ProductSearchService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [ProductSearchService]
    });
  });

  it('should be created', inject([ProductSearchService], (service: ProductSearchService) => {
    expect(service).toBeTruthy();
  }));
});
