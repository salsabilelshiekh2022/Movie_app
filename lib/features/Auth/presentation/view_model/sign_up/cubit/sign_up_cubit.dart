import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/functions/snack_bar.dart';
import '../../../../../../core/router/app_router.dart';
import '../../../../../Home/presentation/views/home_view.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  final GlobalKey<FormState> formKey = GlobalKey();
  String? email, password;

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  static SignUpCubit of(context) => BlocProvider.of(context);

  Future<void> signUp() async {
    formKey.currentState!.save();

    if (formKey.currentState!.validate()) {
      emit(SignUpLoading());
      showSnackBar("Success", Colors.green[700]!);
      AppRouter.navigateAndPop(const HomeView());

      emit(SignUpInitial());
    } else {
      autovalidateMode = AutovalidateMode.always;
      showSnackBar("Failed, Try again", Colors.red[600]!);
    }
  }
}
