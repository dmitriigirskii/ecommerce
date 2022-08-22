part of 'product_bloc.dart';

enum ProductStatus { initial, success, failure }

class ProductState extends Equatable {
  const ProductState({
    this.status = ProductStatus.initial,
    this.product,
  });

  final ProductStatus status;
  final Product? product;

  ProductState copyWith({
    ProductStatus? status,
    Product? product,
  }) {
    return ProductState(
      status: status ?? this.status,
      product: product ?? this.product,
    );
  }

  @override
  String toString() {
    return '''ProductState { status: $status }''';
  }

  @override
  List<Object?> get props => [status, product];
}
