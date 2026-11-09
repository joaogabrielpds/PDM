import '../store/domain/entities/product.dart';

class ProductRepository {
  static final List<Product> produtos = [
    Product(
      nome: 'essence mascara lash princess',
      descricao: 'Máscara de cílios da essence',
      sigla: 'essence',
      preco: 10.0,
    ),
    Product(
      nome: 'iphone X',
      descricao: 'celular da apple',
      sigla: 'iphone',
      preco: 20.0,
    ),
    Product(
      nome: 'perfume floral',
      descricao: 'perfume floral da natura',
      sigla: 'perfume',
      preco: 30.0,
    ),
  ];
}