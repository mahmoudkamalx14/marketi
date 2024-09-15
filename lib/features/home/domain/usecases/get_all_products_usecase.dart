import 'package:marketi/core/networking/api_result.dart';
import 'package:marketi/features/home/data/models/product_response_model.dart';
import 'package:marketi/features/home/domain/repository/base_home_repository.dart';

class GetAllProductsUsecase {
  final BaseHomeRepository _repository;

  GetAllProductsUsecase(this._repository);

  Future<ApiResult<ProductResponseModel>> call() async {
    return await _repository.getAllProducts();
  }
}