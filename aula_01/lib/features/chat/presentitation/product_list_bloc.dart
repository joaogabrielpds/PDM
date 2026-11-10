
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/product_list_event.dart';
import 'bloc/product_list_state.dart';
import '../../../infra/data/product_repository.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  final ProductRepository repository;

  ProductListBloc(this.repository) : super(ProductListInitialState()) {
    on<LoadProductListEvent>((event, emit) async {
      emit(ProductListLoadingState());

      try {
        final products = await repository.getProducts();

        emit(
          ProductListLoadedState(
            products: products,
          ),
        );
      } catch (e) {
        emit(
          ProductListFailureState(
            message: 'Erro ao carregar produtos: $e',
          ),
        );
      }
    });
  }
}
