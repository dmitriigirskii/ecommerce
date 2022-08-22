import '../repository/cart.dart';

class CartService {
  final CartRepository _cartRepository = CartRepository();

  findOne() => _cartRepository.findOne();
}
