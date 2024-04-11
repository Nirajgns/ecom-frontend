import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ecom_app/core/api.dart';
import 'package:ecom_app/data/model/user/user_model.dart';

class UserRepository {
  final _api = Api();

  Future<UserModel> createAccount(
      {required String email, required String password}) async {
    try {
      Response response = await _api.sendRequest.post(
        "/user/createAccount",
        data: jsonEncode({"email": email, "password": password}),
      );
      ApiResponse apiResponse = ApiResponse.fromResponse(response);

      if (!apiResponse.success) {
        throw apiResponse.message.toString();
      }
      //conver raw data to userModel
      return UserModel.fromJson(apiResponse.data);
    } catch (ex) {
      rethrow;
    }
  }

  Future<UserModel> signIn(
      {required String email, required String password}) async {
    try {
      Response response = await _api.sendRequest.post(
        "/user/signIn",
        data: jsonEncode({"email": email, "password": password}),
      );
      ApiResponse apiResponse = ApiResponse.fromResponse(response);

      if (!apiResponse.success) {
        throw apiResponse.message.toString();
      }
      //conver raw data to userModel
      return UserModel.fromJson(apiResponse.data);
    } catch (ex) {
      rethrow;
    }
  }
}
