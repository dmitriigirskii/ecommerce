import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@Freezed(
  copyWith: false,
  equal: false,
)
class Product with _$Product {
  const factory Product({
    required String id,
    required String title,
    required String ssd,
    required String sd,
    required double rating,
    required int price,
    required bool isFavorites,
    required List<String> images,
    required List<String> color,
    required List<String> capacity,
    required String camera,
    required String CPU,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}
