import 'package:dio/dio.dart';
import 'package:ecom_app/core/api.dart';
import 'package:ecom_app/data/model/product/product_model.dart';

class ProductRepository {
  final _api = Api();

  Future<List<ProductModel>> fetchAllProducts() async {
    try {
      Response response = await _api.sendRequest.get("/product");
      ApiResponse apiResponse = ApiResponse.fromResponse(response);

      if (!apiResponse.success) {
        throw apiResponse.message.toString();
      }
      //conver raw data to userModel
      return (apiResponse.data as List<dynamic>)
          .map((e) => ProductModel.fromJson(e))
          .toList();
    } catch (ex) {
      rethrow;
    }
  }

  Future<List<ProductModel>> fetchProductsByCategory(String categoryId) async {
    try {
      Response response =
          await _api.sendRequest.get("/product/category/$categoryId");
      ApiResponse apiResponse = ApiResponse.fromResponse(response);

      if (!apiResponse.success) {
        throw apiResponse.message.toString();
      }
      //conver raw data to userModel
      return (apiResponse.data as List<dynamic>)
          .map((e) => ProductModel.fromJson(e))
          .toList();
    } catch (ex) {
      rethrow;
    }
  }
}
