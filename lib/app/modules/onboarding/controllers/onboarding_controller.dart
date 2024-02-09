import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shipora_1/app/data/utils/error_handler.dart';
import 'package:shipora_1/app/data/utils/prefrences.dart';
import 'package:shipora_1/app/networking/api_client.dart';

class OnboardingController extends GetxController {
  //TODO: Implement OnboardingController

  final isLoading = false.obs;
  late final Prefrences prefrences;

  OnboardingState onboardingState = OnboardingState.signIn;


  // * Login Form
  late final GlobalKey<FormState> loginFormKey;
  late final TextEditingController login_mobileController;
  late final TextEditingController login_passwordController;

  // * Signup Form
  late final GlobalKey<FormState> signupFormKey;
  late final TextEditingController signup_mobileController;
  late final TextEditingController signup_passwordController;
  late final TextEditingController signup_confirmPasswordController;
  late final TextEditingController signup_emailController;
  late final TextEditingController signup_firstNameController;
  late final TextEditingController signup_lastNameController;

  //* Otp Signup Form
  late final GlobalKey<FormState> otherSignupFormKey;
  late final TextEditingController otherSignup_mobileController;



  // * Forgot Password Form
  late final GlobalKey<FormState> forgotPasswordFormKey;
  late final TextEditingController forgotPassword_mobileController;


  // * OTP rest Form
  late final GlobalKey<FormState> otpResetFormKey;
  late final TextEditingController otpReset_mobileController;

  // * Reset Password Form
  late final GlobalKey<FormState> resetPasswordFormKey;
  late final TextEditingController resetPassword_passwordController;
  late final TextEditingController resetPassword_confirmPasswordController;


  @override
  void onInit() {
    prefrences = Prefrences();
    loginFormKey = GlobalKey<FormState>();
    login_mobileController = TextEditingController();
    login_passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    login_mobileController.dispose();
    login_passwordController.dispose();
    loginFormKey.currentState!.reset();

    super.onClose();
  }

  /// This function is used to login the user
  void login(VoidCallback callback) async {
    if (loginFormKey.currentState!.validate()) {
      isLoading(true);
      final response = await handleResponse(() async => ApiClient().login(
          login_mobileController.text, login_passwordController.text, "+91"));
      isLoading(false);
      if (response != null && response.status == true) {
        Get.snackbar("Login Successfully", "");
        await prefrences.setToken(response.accessToken!);
        await prefrences.setUserId(response.id!);
        await prefrences.setMobileNumber(response.mobilenumber!);
        await prefrences.setEmail(response.email!);
        callback();
      }
    }
  }

  void toggleView(OnboardingState state) {
    onboardingState = state;
    update(['toggleView']);
  }
}

enum OnboardingState {
  signIn,
  signUp,
  forgotPassword,
  otpSignup,
  otpReset,
  resetPassword,
  resetSuccess
}
