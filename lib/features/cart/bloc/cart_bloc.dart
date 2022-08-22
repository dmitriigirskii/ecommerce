import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../models/basket.dart';
import '../models/cart.dart';
import '../service/cart.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartService cartService;

  CartBloc({required this.cartService}) : super(const CartState()) {
    on<CartEventLoad>(_onFindOne);
    on<CartEventRemove>(_onRemoveOne);
  }

  Future<void> _onFindOne(
    CartEvent event,
    Emitter<CartState> emit,
  ) async {
    try {
      final cart = await cartService.findOne();

      emit(state.copyWith(
        status: CartStatus.success,
        cart: cart,
      ));

      emit(state.copyWith(
        cart: state.cart?.copyWith(
          total: _totalPrice(cart),
        ),
      ));
    } catch (_) {
      emit(state.copyWith(status: CartStatus.failure));
    }
  }

  Future<void> _onRemoveOne(
    CartEventRemove event,
    Emitter<CartState> emit,
  ) async {
    try {
      if (_findOne(state.cart!, event.basket)) {
        final List<Basket> baskets = [...state.cart!.basket];
        baskets.removeWhere((element) => element.id == event.basket.id);

        emit(state.copyWith(
          cart: state.cart!.copyWith(
            basket: baskets,
          ),
        ));

        emit(state.copyWith(
          cart: state.cart?.copyWith(
            total: _totalPrice(state.cart!),
          ),
        ));
      }
    } catch (_) {
      emit(state.copyWith(status: CartStatus.failure));
    }
  }

  // Total Price
  int _totalPrice(Cart cart) {
    int total = 0;

    for (var element in cart.basket) {
      total += element.price * element.quantity;
    }

    return total;
  }

  // Find product in cart
  bool _findOne(Cart cart, Basket product) {
    try {
      cart.basket.firstWhere((element) => element.id == product.id);
      return true;
    } catch (_) {
      return false;
    }
  }
}
