part of 'cart_bloc.dart';

enum CartStatus { initial, success, failure }

class CartState extends Equatable {
  const CartState({
    this.status = CartStatus.initial,
    this.cart,
    this.totalPrice = 0,
  });

  final CartStatus status;
  final Cart? cart;
  final int totalPrice;

  CartState copyWith({
    CartStatus? status,
    Cart? cart,
    int? totalPrice,
  }) {
    return CartState(
      status: status ?? this.status,
      cart: cart ?? this.cart,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }

  @override
  String toString() {
    return '''CartState { status: $status }''';
  }

  @override
  List<Object?> get props => [status, cart, totalPrice];
}
