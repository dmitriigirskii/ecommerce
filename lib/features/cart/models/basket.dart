import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket.freezed.dart';
part 'basket.g.dart';

@Freezed()
class Basket with _$Basket {
  const factory Basket({
    required int id,
    required String images,
    required int price,
    required String title,
    @Default(1) int quantity,
  }) = _Basket;

  factory Basket.fromJson(Map<String, Object?> json) => _$BasketFromJson(json);
}
