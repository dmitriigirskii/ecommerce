// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'basket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Basket _$BasketFromJson(Map<String, dynamic> json) {
  return _Basket.fromJson(json);
}

/// @nodoc
mixin _$Basket {
  int get id => throw _privateConstructorUsedError;
  String get images => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketCopyWith<Basket> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketCopyWith<$Res> {
  factory $BasketCopyWith(Basket value, $Res Function(Basket) then) =
      _$BasketCopyWithImpl<$Res>;
  $Res call({int id, String images, int price, String title, int quantity});
}

/// @nodoc
class _$BasketCopyWithImpl<$Res> implements $BasketCopyWith<$Res> {
  _$BasketCopyWithImpl(this._value, this._then);

  final Basket _value;
  // ignore: unused_field
  final $Res Function(Basket) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? images = freezed,
    Object? price = freezed,
    Object? title = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_BasketCopyWith<$Res> implements $BasketCopyWith<$Res> {
  factory _$$_BasketCopyWith(_$_Basket value, $Res Function(_$_Basket) then) =
      __$$_BasketCopyWithImpl<$Res>;
  @override
  $Res call({int id, String images, int price, String title, int quantity});
}

/// @nodoc
class __$$_BasketCopyWithImpl<$Res> extends _$BasketCopyWithImpl<$Res>
    implements _$$_BasketCopyWith<$Res> {
  __$$_BasketCopyWithImpl(_$_Basket _value, $Res Function(_$_Basket) _then)
      : super(_value, (v) => _then(v as _$_Basket));

  @override
  _$_Basket get _value => super._value as _$_Basket;

  @override
  $Res call({
    Object? id = freezed,
    Object? images = freezed,
    Object? price = freezed,
    Object? title = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$_Basket(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Basket implements _Basket {
  const _$_Basket(
      {required this.id,
      required this.images,
      required this.price,
      required this.title,
      this.quantity = 1});

  factory _$_Basket.fromJson(Map<String, dynamic> json) =>
      _$$_BasketFromJson(json);

  @override
  final int id;
  @override
  final String images;
  @override
  final int price;
  @override
  final String title;
  @override
  @JsonKey()
  final int quantity;

  @override
  String toString() {
    return 'Basket(id: $id, images: $images, price: $price, title: $title, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Basket &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(images),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$$_BasketCopyWith<_$_Basket> get copyWith =>
      __$$_BasketCopyWithImpl<_$_Basket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BasketToJson(
      this,
    );
  }
}

abstract class _Basket implements Basket {
  const factory _Basket(
      {required final int id,
      required final String images,
      required final int price,
      required final String title,
      final int quantity}) = _$_Basket;

  factory _Basket.fromJson(Map<String, dynamic> json) = _$_Basket.fromJson;

  @override
  int get id;
  @override
  String get images;
  @override
  int get price;
  @override
  String get title;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_BasketCopyWith<_$_Basket> get copyWith =>
      throw _privateConstructorUsedError;
}
