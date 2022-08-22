// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as String,
      title: json['title'] as String,
      ssd: json['ssd'] as String,
      sd: json['sd'] as String,
      rating: (json['rating'] as num).toDouble(),
      price: json['price'] as int,
      isFavorites: json['isFavorites'] as bool,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      color: (json['color'] as List<dynamic>).map((e) => e as String).toList(),
      capacity:
          (json['capacity'] as List<dynamic>).map((e) => e as String).toList(),
      camera: json['camera'] as String,
      CPU: json['CPU'] as String,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'ssd': instance.ssd,
      'sd': instance.sd,
      'rating': instance.rating,
      'price': instance.price,
      'isFavorites': instance.isFavorites,
      'images': instance.images,
      'color': instance.color,
      'capacity': instance.capacity,
      'camera': instance.camera,
      'CPU': instance.CPU,
    };
