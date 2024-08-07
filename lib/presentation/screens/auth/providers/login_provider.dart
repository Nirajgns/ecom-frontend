import 'dart:async';

import 'package:ecom_app/logic/cubits/user_cubit/user_cubit.dart';
import 'package:ecom_app/logic/cubits/user_cubit/user_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginProvider with ChangeNotifier {
  final BuildContext context;
  LoginProvider(this.context) {
    _listenToUserCubit();
  }

  bool isLoading = false;
  String error = '';

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  StreamSubscription? _userSubscription;

  void _listenToUserCubit() {
    _userSubscription = BlocProvider.of<UserCubit>(context).stream.listen(
      (userState) {
        if (UserState is UserLoadingState) {
          isLoading = true;
          error = "";
          notifyListeners();
        } else if (userState is UserErrorState) {
          isLoading = false;
          error = userState.message;
          notifyListeners();
        } else {
          isLoading = false;
          error = "";
          notifyListeners();
        }
      },
    );
  }

  void logIn() async {
    if (!formkey.currentState!.validate()) return;
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    BlocProvider.of<UserCubit>(context)
        .signIn(email: email, password: password);
  }

  @override
  void dispose() {
    _userSubscription?.cancel();
    super.dispose();
  }
}
