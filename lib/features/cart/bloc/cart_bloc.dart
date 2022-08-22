import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../models/cart.dart';
import '../service/cart.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartService cartService;

  CartBloc({required this.cartService}) : super(const CartState()) {
    on<CartEvent>(_onFindOne);
  }

  Future<void> _onFindOne(
    CartEvent event,
    Emitter<CartState> emit,
  ) async {
    try {
      final cart = await cartService.findOne();

      return emit(state.copyWith(
        status: CartStatus.success,
        cart: cart,
      ));
    } catch (_) {
      emit(state.copyWith(status: CartStatus.failure));
    }
  }
}
