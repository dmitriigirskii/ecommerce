import '../repository/product.dart';

class ProductService {
  final ProductRepository _productRepository = ProductRepository();

  findOne() => _productRepository.findOne();
}
