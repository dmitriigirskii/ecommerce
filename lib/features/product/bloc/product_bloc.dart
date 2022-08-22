import 'package:bloc/bloc.dart';
import 'package:ecommerce/features/product/service/product.dart';
import 'package:equatable/equatable.dart';

import '../models/product.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductService productService;

  ProductBloc({required this.productService}) : super(ProductState()) {
    on<ProductEvent>(_onFindOne);
  }

  Future<void> _onFindOne(
    ProductEvent event,
    Emitter<ProductState> emit,
  ) async {
    try {
      final product = await productService.findOne();

      return emit(state.copyWith(
        status: ProductStatus.success,
        product: product,
      ));
    } catch (_) {
      emit(state.copyWith(status: ProductStatus.failure));
    }
  }
}
