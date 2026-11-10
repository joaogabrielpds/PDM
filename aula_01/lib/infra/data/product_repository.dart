

import 'package:flutter/foundation.dart';

import '/store/domain/entities/product.dart';

@immutable
class ProductRepository {
  final List<Product> _produtos = [
    Product(
      id: 1,
      nome: 'Essence Mascara Lash Princess',
      categoria: 'Beleza',
      preco: 9.99,
      avaliacao: 4.9,
      imagemUrl:
          'https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/1.webp',
    ),
    Product(
      id: 2,
      nome: 'iPhone 18 Pro Max',
      categoria: 'Smartphones',
      preco: 1700.000,
      avaliacao: 4.6,
      imagemUrl:
          'https://http2.mlstatic.com/D_Q_NP_667639-MLA117486079051_092026-F.webp'
    ),
    Product(
      id: 3,
      nome: 'Perfume Floral',
      categoria: 'Fragrâncias',
      preco: 49.99,
      avaliacao: 4.8,
      imagemUrl:
          'https://http2.mlstatic.com/D_Q_NP_631643-MLA110623713615_042026-F.webp'
    ),
    Product(
      id: 4,
      nome: 'Mesa de madeira',
      categoria: 'Móveis',
      preco: 329.00,
      avaliacao: 4.5,
      imagemUrl:
          'https://http2.mlstatic.com/D_Q_NP_706298-MLA114811435206_082026-F.webp'
    ),
  ];

  Future<List<Product>> getProducts() async {
    return _produtos;
  }
}


