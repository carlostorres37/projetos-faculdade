import { TestBed, inject } from '@angular/core/testing';

import { ProductSearchListUpdateService } from './product-search-list-update.service';

describe('ProductSearchListUpdateService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [ProductSearchListUpdateService]
    });
  });

  it('should be created', inject([ProductSearchListUpdateService], (service: ProductSearchListUpdateService) => {
    expect(service).toBeTruthy();
  }));
});
