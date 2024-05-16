import 'package:ecom_app/data/model/user/user_model.dart';

abstract class UserState {
  String get message => "";
}

class UserInitialState extends UserState {}

class UserLoadingState extends UserState {}

class UserLoggedInState extends UserState {
  final UserModel userModel;
  UserLoggedInState(this.userModel);
}

class UserLoggedOutState extends UserState {}

class UserErrorState extends UserState {
  @override
  final String message;

  UserErrorState(this.message);
}
