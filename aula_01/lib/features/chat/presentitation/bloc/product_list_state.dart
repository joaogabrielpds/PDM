abstract class ProductListState {}
class ProductListInitialState extends ProductListState {}
class ProductListLoadingState extends ProductListState {}
class ProductListLoadedState extends ProductListState {
  final List<String> products;
  ProductListLoadedState({required this.products});
  
}