import 'package:bloc/bloc.dart';
import 'package:ecommerce/features/sales/service/sale.dart';
import 'package:equatable/equatable.dart';

import '../models/sale.dart';

part 'sale_event.dart';
part 'sale_state.dart';

class SaleBloc extends Bloc<SaleEvent, SaleState> {
  final SaleService saleService;

  SaleBloc({required this.saleService}) : super(const SaleState()) {
    on<SaleEvent>(_onFindAll);
  }

  Future<void> _onFindAll(
    SaleEvent event,
    Emitter<SaleState> emit,
  ) async {
    try {
      final sales = await saleService.findAll();

      return emit(state.copyWith(
        status: SaleStatus.success,
        sales: sales,
      ));
    } catch (_) {
      emit(state.copyWith(status: SaleStatus.failure));
    }
  }
}
