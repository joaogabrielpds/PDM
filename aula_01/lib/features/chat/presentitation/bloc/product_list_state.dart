

import '/store/domain/entities/product.dart';

abstract class ProductListState {}

class ProductListInitialState extends ProductListState {}

class ProductListLoadingState extends ProductListState {}

class ProductListLoadedState extends ProductListState {
  final List<Product> products;

  ProductListLoadedState({
    required this.products,
  });
}

class ProductListFailureState extends ProductListState {
  final String message;

  ProductListFailureState({
    required this.message,
  });
}
