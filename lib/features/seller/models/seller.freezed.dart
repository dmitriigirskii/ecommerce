// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'seller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Seller _$SellerFromJson(Map<String, dynamic> json) {
  return _Seller.fromJson(json);
}

/// @nodoc
mixin _$Seller {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  int get price_without_discount => throw _privateConstructorUsedError;
  int get discount_price => throw _privateConstructorUsedError;
  bool? get is_favorites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_Seller implements _Seller {
  const _$_Seller(
      {required this.id,
      required this.title,
      required this.picture,
      required this.price_without_discount,
      required this.discount_price,
      required this.is_favorites});

  factory _$_Seller.fromJson(Map<String, dynamic> json) =>
      _$$_SellerFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String picture;
  @override
  final int price_without_discount;
  @override
  final int discount_price;
  @override
  final bool? is_favorites;

  @override
  String toString() {
    return 'Seller(id: $id, title: $title, picture: $picture, price_without_discount: $price_without_discount, discount_price: $discount_price, is_favorites: $is_favorites)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_SellerToJson(
      this,
    );
  }
}

abstract class _Seller implements Seller {
  const factory _Seller(
      {required final int id,
      required final String title,
      required final String picture,
      required final int price_without_discount,
      required final int discount_price,
      required final bool? is_favorites}) = _$_Seller;

  factory _Seller.fromJson(Map<String, dynamic> json) = _$_Seller.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get picture;
  @override
  int get price_without_discount;
  @override
  int get discount_price;
  @override
  bool? get is_favorites;
}
