part of 'cart_bloc.dart';

enum CartStatus { initial, success, failure }

class CartState extends Equatable {
  const CartState({
    this.status = CartStatus.initial,
    this.cart,
  });

  final CartStatus status;
  final Cart? cart;

  CartState copyWith({
    CartStatus? status,
    Cart? cart,
  }) {
    return CartState(
      status: status ?? this.status,
      cart: cart ?? this.cart,
    );
  }

  @override
  String toString() {
    return '''CartState { status: $status }''';
  }

  @override
  List<Object?> get props => [status, cart];
}
