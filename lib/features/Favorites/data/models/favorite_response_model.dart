import 'package:json_annotation/json_annotation.dart';

part 'favorite_response_model.g.dart';

@JsonSerializable(createToJson: false)
class FavoriteResponseModel {
  FavoriteResponseModel({
    required this.status,
    required this.data,
  });

  final bool status;
  final Data? data;

  factory FavoriteResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteResponseModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class Data {
  Data({
    required this.currentPage,
    required this.data,
  });

  @JsonKey(name: 'current_page')
  final int currentPage;
  final List<Datum>? data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@JsonSerializable(createToJson: false)
class Datum {
  Datum({
    required this.id,
    required this.product,
  });

  final int id;
  final Product? product;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@JsonSerializable(createToJson: false)
class Product {
  Product({
    required this.id,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.image,
    required this.name,
    required this.description,
  });

  final int id;
  final int price;

  @JsonKey(name: 'old_price')
  final int oldPrice;
  final int discount;
  final String image;
  final String name;
  final String description;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}