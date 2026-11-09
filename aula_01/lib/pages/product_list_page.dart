import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../features/chat/presentitation/product_list_bloc.dart';
import '../features/chat/presentitation/bloc/product_list_event.dart';
import '../features/chat/presentitation/bloc/product_list_state.dart';
import '../infra/data/product_repository.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProductListBloc(ProductRepository())
        ..add(LoadProductListEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Catálogo de Produtos'),
        ),
        body: BlocBuilder<ProductListBloc, ProductListState>(
          builder: (context, state) {
            if (state is ProductListLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is ProductListFailureState) {
              return Center(
                child: Text(state.message),
              );
            }

            if (state is ProductListLoadedState) {
              return ListView.builder(
                itemCount: state.products.length,
                itemBuilder: (context, index) {
                  final product = state.products[index];

                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(product.sigla[0].toUpperCase()),
                    ),
                    title: Text(product.nome),
                    subtitle: Text(product.descricao),
                    trailing: Text(
                      'R\$ ${product.preco.toStringAsFixed(2)}',
                    ),
                  );
                },
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}