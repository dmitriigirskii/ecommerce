import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale.freezed.dart';
part 'sale.g.dart';

@Freezed(
  copyWith: false,
  equal: false,
)
class Sale with _$Sale {
  const factory Sale({
    required int id,
    required String title,
    required String subtitle,
    required String picture,
    required bool? is_buy,
    required bool? is_new,
  }) = _Sale;

  factory Sale.fromJson(Map<String, Object?> json) => _$SaleFromJson(json);
}
