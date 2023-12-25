import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/Auth/presentation/view_model/sign_in/sign_in_state.dart';
import 'package:movie_app/features/Home/presentation/views/home_view.dart';

import '../../../../../core/functions/snack_bar.dart';
import '../../../../../core/router/app_router.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());

  final GlobalKey<FormState> formKey = GlobalKey();
  String? email, password;

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  static SignInCubit of(context) => BlocProvider.of(context);

  Future<void> signIn() async {
    formKey.currentState!.save();

    if (formKey.currentState!.validate()) {
      emit(SignInLoading());
      showSnackBar("Success", Colors.green[700]!);
      AppRouter.navigateAndPop(const HomeView());

      emit(SignInInitial());
    } else {
      autovalidateMode = AutovalidateMode.always;
      showSnackBar("Failed, Try again", Colors.red[600]!);
    }
  }
}
