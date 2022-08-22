// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Basket _$$_BasketFromJson(Map<String, dynamic> json) => _$_Basket(
      id: json['id'] as int,
      images: json['images'] as String,
      price: json['price'] as int,
      title: json['title'] as String,
      quantity: json['quantity'] as int? ?? 1,
    );

Map<String, dynamic> _$$_BasketToJson(_$_Basket instance) => <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'price': instance.price,
      'title': instance.title,
      'quantity': instance.quantity,
    };
