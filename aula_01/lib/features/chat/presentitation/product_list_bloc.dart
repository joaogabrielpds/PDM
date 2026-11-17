
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/product_list_event.dart';
import 'bloc/product_list_state.dart';
import '../../../infra/data/product_repository.dart';

// BLoC responsável por receber eventos e controlar os estados da lista de produtos.
class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {

  // Repositório responsável por fornecer os produtos.
  final ProductRepository repository;

  // Inicializa o BLoC com o estado inicial.
  ProductListBloc(this.repository) : super(ProductListInitialState()) {

    // Escuta o evento de carregamento dos produtos.
    on<LoadProductListEvent>((event, emit) async {

      // Informa que os produtos estão sendo carregados.
      emit(ProductListLoadingState());

      try {
        // Busca os produtos no repositório.
        final products = await repository.getProducts();

        // Emite o estado de sucesso contendo a lista de produtos.
        emit(
          ProductListLoadedState(
            products: products,
          ),
        );
      } catch (e) {
        // Emite o estado de erro caso ocorra alguma falha.
        emit(
          ProductListFailureState(
            message: 'Erro ao carregar produtos: $e',
          ),
        );
      }
    });
  }
}
