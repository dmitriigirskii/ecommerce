// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Seller _$$_SellerFromJson(Map<String, dynamic> json) => _$_Seller(
      id: json['id'] as int,
      title: json['title'] as String,
      picture: json['picture'] as String,
      price_without_discount: json['price_without_discount'] as int,
      discount_price: json['discount_price'] as int,
      is_favorites: json['is_favorites'] as bool?,
    );

Map<String, dynamic> _$$_SellerToJson(_$_Seller instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'picture': instance.picture,
      'price_without_discount': instance.price_without_discount,
      'discount_price': instance.discount_price,
      'is_favorites': instance.is_favorites,
    };
