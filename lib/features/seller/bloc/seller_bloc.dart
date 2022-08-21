import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../models/seller.dart';
import '../service/seller.dart';

part 'seller_event.dart';
part 'seller_state.dart';

class SellerBloc extends Bloc<SellerEvent, SellerState> {
  final SellerService sellerService;

  SellerBloc({required this.sellerService}) : super(const SellerState()) {
    on<SellerEvent>(_onFindAll);
  }

  Future<void> _onFindAll(
    SellerEvent event,
    Emitter<SellerState> emit,
  ) async {
    try {
      final sellers = await sellerService.findAll();

      return emit(state.copyWith(
        status: SellerStatus.success,
        sellers: sellers,
      ));
    } catch (_) {
      emit(state.copyWith(status: SellerStatus.failure));
    }
  }
}
