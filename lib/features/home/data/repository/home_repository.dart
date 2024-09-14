import 'package:marketi/core/networking/api_result.dart';
import 'package:marketi/features/home/data/datasource/remote_home_datasource.dart';
import 'package:marketi/features/home/data/models/banner_response_model.dart';
import 'package:marketi/features/home/domain/repository/base_home_repository.dart';

class HomeRepository extends BaseHomeRepository {
  final RemoteHomeDatasource _datasource;

  HomeRepository(this._datasource);
  @override
  Future<ApiResult<BannerResponseModel>> getBanners() async {
    try {
      final result = await _datasource.getBanners();

      return ApiResult.success(result);
    } catch (message) {
      return ApiResult.failure(message.toString());
    }
  }
}
