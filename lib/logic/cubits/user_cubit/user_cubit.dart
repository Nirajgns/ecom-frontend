import 'package:ecom_app/data/model/user/user_model.dart';
import 'package:ecom_app/data/reposotories/user_repository.dart';
import 'package:ecom_app/logic/cubits/user_cubit/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitialState());

  final UserRepository _userRepository = UserRepository();

  void signin({required String email, required String password}) async {
    emit(UserLoadingState());
    try {
      UserModel userModel =
          await _userRepository.signIn(email: email, password: password);
      emit(
        UserLoggedInState(userModel),
      );
    } catch (ex) {
      emit(UserErrorState(ex.toString()));
    }
  }

  void createAccount({required String email, required String password}) async {
    emit(UserLoadingState());

    try {
      UserModel userModel =
          await _userRepository.createAccount(email: email, password: password);
      emit(
        UserLoggedInState(userModel),
      );
    } catch (ex) {
      emit(UserErrorState(ex.toString()));
    }
  }
}
