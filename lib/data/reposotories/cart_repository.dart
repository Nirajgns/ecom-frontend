import 'package:dio/dio.dart';
import 'package:ecom_app/core/api.dart';
import 'package:ecom_app/data/model/Cart/cart_item_model.dart';

class CartRepository {
  final _api = Api();

  Future<List<CartItemModel>> fetchCartForUser(userId) async {
    try {
      Response response = await _api.sendRequest.get("/cart/$userId");
      ApiResponse apiResponse = ApiResponse.fromResponse(response);

      if (!apiResponse.success) {
        throw apiResponse.message.toString();
      }

      return (apiResponse.data as List<dynamic>)
          .map((e) => CartItemModel.fromJson(e))
          .toList();
    } catch (ex) {
      rethrow;
    }
  }

  Future<List<CartItemModel>> addToCart(
      CartItemModel cartItem, String userId) async {
    try {
      Map<String, dynamic> data = cartItem.toJson();
      data["user"] = userId;

      Response response = await _api.sendRequest.post("/cart");
      ApiResponse apiResponse = ApiResponse.fromResponse(response);

      if (!apiResponse.success) {
        throw apiResponse.message.toString();
      }

      return (apiResponse.data as List<dynamic>)
          .map((json) => CartItemModel.fromJson(json))
          .toList();
    } catch (ex) {
      rethrow;
    }
  }

  Future<List<CartItemModel>> removeFromCart(
      String productId, String userId) async {
    try {
      Map<String, dynamic> data = {"user": userId, "product": productId};

      data["userId"] = userId;

      Response response = await _api.sendRequest.delete("/cart");
      ApiResponse apiResponse = ApiResponse.fromResponse(response);

      if (!apiResponse.success) {
        throw apiResponse.message.toString();
      }

      return (apiResponse.data as List<dynamic>)
          .map((json) => CartItemModel.fromJson(json))
          .toList();
    } catch (ex) {
      rethrow;
    }
  }
}
