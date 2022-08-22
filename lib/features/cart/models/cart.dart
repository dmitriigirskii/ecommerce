import 'package:freezed_annotation/freezed_annotation.dart';

import 'basket.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@Freezed()
class Cart with _$Cart {
  @JsonSerializable(explicitToJson: true)
  const factory Cart({
    required String id,
    required String delivery,
    required int total,
    required List<Basket> basket,
  }) = _Cart;

  factory Cart.fromJson(Map<String, Object?> json) => _$CartFromJson(json);
}
