// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sale.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sale _$SaleFromJson(Map<String, dynamic> json) {
  return _Sale.fromJson(json);
}

/// @nodoc
mixin _$Sale {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  bool? get is_buy => throw _privateConstructorUsedError;
  bool? get is_new => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_Sale implements _Sale {
  const _$_Sale(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.picture,
      required this.is_buy,
      required this.is_new});

  factory _$_Sale.fromJson(Map<String, dynamic> json) => _$$_SaleFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String picture;
  @override
  final bool? is_buy;
  @override
  final bool? is_new;

  @override
  String toString() {
    return 'Sale(id: $id, title: $title, subtitle: $subtitle, picture: $picture, is_buy: $is_buy, is_new: $is_new)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaleToJson(
      this,
    );
  }
}

abstract class _Sale implements Sale {
  const factory _Sale(
      {required final int id,
      required final String title,
      required final String subtitle,
      required final String picture,
      required final bool? is_buy,
      required final bool? is_new}) = _$_Sale;

  factory _Sale.fromJson(Map<String, dynamic> json) = _$_Sale.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get picture;
  @override
  bool? get is_buy;
  @override
  bool? get is_new;
}
