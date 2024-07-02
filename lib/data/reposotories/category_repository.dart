import 'package:dio/dio.dart';
import 'package:ecom_app/core/api.dart';
import 'package:ecom_app/data/model/category/category_model.dart';

class CategoryRepository {
  final _api = Api();

  Future<List<CategoryModel>> fetchAllCategories() async {
    try {
      Response response = await _api.sendRequest.get("/category");
      ApiResponse apiResponse = ApiResponse.fromResponse(response);

      if (!apiResponse.success) {
        throw apiResponse.message.toString();
      }
      //convert raw data to userModel
      return (apiResponse.data as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e))
          .toList();
    } catch (ex) {
      rethrow;
    }
  }
}
