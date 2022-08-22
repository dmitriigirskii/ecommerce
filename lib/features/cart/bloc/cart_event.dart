part of 'cart_bloc.dart';

class CartEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class CartEventLoad extends CartEvent {}

class CartEventRemove extends CartEvent {
  final Basket basket;

  CartEventRemove({required this.basket});
}

class CartEventMinus extends CartEvent {
  final Basket basket;

  CartEventMinus({required this.basket});
}

class CartEventPlus extends CartEvent {
  final Basket basket;

  CartEventPlus({required this.basket});
}
