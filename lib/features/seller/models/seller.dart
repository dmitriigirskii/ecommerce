import 'package:freezed_annotation/freezed_annotation.dart';

part 'seller.freezed.dart';
part 'seller.g.dart';

@Freezed(
  copyWith: false,
  equal: false,
)
class Seller with _$Seller {
  const factory Seller({
    required int id,
    required String title,
    required String picture,
    required int price_without_discount,
    required int discount_price,
    required bool? is_favorites,
  }) = _Seller;

  factory Seller.fromJson(Map<String, Object?> json) => _$SellerFromJson(json);
}
