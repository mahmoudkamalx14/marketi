import 'package:dio/dio.dart';
import 'package:marketi/core/networking/api_constants.dart';
import 'package:marketi/features/home/data/models/banner_response_model.dart';
import 'package:marketi/features/home/data/models/categories_response_model.dart';
import 'package:marketi/features/home/data/models/product_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'remote_home_datasource.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class RemoteHomeDatasource {
  factory RemoteHomeDatasource(Dio dio, {String baseUrl}) =
      _RemoteHomeDatasource;

  @GET(ApiConstants.banners)
  Future<BannerResponseModel> getBanners();

  @GET(ApiConstants.categories)
  Future<CategoriesResponseModel> getCategories();

  @GET(ApiConstants.allProducts)
  Future<ProductResponseModel> getAllProducts();

  @GET(ApiConstants.categoryProduct)
  Future<ProductResponseModel> getCategoryProducts();
}
