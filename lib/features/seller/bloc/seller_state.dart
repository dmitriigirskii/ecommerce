part of 'seller_bloc.dart';

enum SellerStatus { initial, success, failure }

class SellerState extends Equatable {
  const SellerState({
    this.status = SellerStatus.initial,
    this.sellers = const <Seller>[],
  });

  final SellerStatus status;
  final List<Seller> sellers;

  SellerState copyWith({
    SellerStatus? status,
    List<Seller>? sellers,
  }) {
    return SellerState(
      status: status ?? this.status,
      sellers: sellers ?? this.sellers,
    );
  }

  @override
  String toString() {
    return '''SellerStatus { status: $status, data: ${sellers.length} }''';
  }

  @override
  List<Object> get props => [status, sellers];
}
