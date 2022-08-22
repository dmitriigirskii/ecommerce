// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get ssd => throw _privateConstructorUsedError;
  String get sd => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  bool get isFavorites => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  List<String> get color => throw _privateConstructorUsedError;
  List<String> get capacity => throw _privateConstructorUsedError;
  String get camera => throw _privateConstructorUsedError;
  String get CPU => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  const _$_Product(
      {required this.id,
      required this.title,
      required this.ssd,
      required this.sd,
      required this.rating,
      required this.price,
      required this.isFavorites,
      required final List<String> images,
      required final List<String> color,
      required final List<String> capacity,
      required this.camera,
      required this.CPU})
      : _images = images,
        _color = color,
        _capacity = capacity;

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String ssd;
  @override
  final String sd;
  @override
  final double rating;
  @override
  final int price;
  @override
  final bool isFavorites;
  final List<String> _images;
  @override
  List<String> get images {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<String> _color;
  @override
  List<String> get color {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_color);
  }

  final List<String> _capacity;
  @override
  List<String> get capacity {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_capacity);
  }

  @override
  final String camera;
  @override
  final String CPU;

  @override
  String toString() {
    return 'Product(id: $id, title: $title, ssd: $ssd, sd: $sd, rating: $rating, price: $price, isFavorites: $isFavorites, images: $images, color: $color, capacity: $capacity, camera: $camera, CPU: $CPU)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final String id,
      required final String title,
      required final String ssd,
      required final String sd,
      required final double rating,
      required final int price,
      required final bool isFavorites,
      required final List<String> images,
      required final List<String> color,
      required final List<String> capacity,
      required final String camera,
      required final String CPU}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get ssd;
  @override
  String get sd;
  @override
  double get rating;
  @override
  int get price;
  @override
  bool get isFavorites;
  @override
  List<String> get images;
  @override
  List<String> get color;
  @override
  List<String> get capacity;
  @override
  String get camera;
  @override
  String get CPU;
}
