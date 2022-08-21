part of 'sale_bloc.dart';

enum SaleStatus { initial, success, failure }

class SaleState extends Equatable {
  const SaleState({
    this.status = SaleStatus.initial,
    this.sales = const <Sale>[],
  });

  final SaleStatus status;
  final List<Sale> sales;

  SaleState copyWith({
    SaleStatus? status,
    List<Sale>? sales,
  }) {
    return SaleState(
      status: status ?? this.status,
      sales: sales ?? this.sales,
    );
  }

  @override
  String toString() {
    return '''SaleStatus { status: $status, data: ${sales.length} }''';
  }

  @override
  List<Object> get props => [status, sales];
}
