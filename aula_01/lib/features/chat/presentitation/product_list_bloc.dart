import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/product_list_event.dart';
import 'bloc/product_list_state.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  ProductListBloc() : super(ProductListInitialState()) {
    on<LoadProductListEvent>((event, emit) async {
      emit(ProductListLoadingState());

      try {
        await Future<void>.delayed(const Duration(seconds: 3));

        emit(
          ProductListLoadedState(
            products: const [],
          ),
        );
      } catch (_) {
        emit(ProductListInitialState());
      }
    });
  }
}
