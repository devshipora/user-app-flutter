import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shipora_1/app/modules/onboarding/views/forgot_password/forgot_view.dart';
import 'package:shipora_1/app/modules/onboarding/views/forgot_password/otp_forgot_view.dart';
import 'package:shipora_1/app/modules/onboarding/views/forgot_password/reset_password.dart';
import 'package:shipora_1/app/modules/onboarding/views/forgot_password/reset_success.dart';
import 'package:shipora_1/app/modules/onboarding/views/otp_view.dart';
import 'package:shipora_1/app/modules/onboarding/views/signin_view.dart';
import 'package:shipora_1/app/modules/onboarding/views/signup_view.dart';
import 'package:shipora_1/app/routes/app_pages.dart';
import 'package:shipora_1/gen/colors.gen.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);

  static const Map<OnboardingState, Widget> _onboardingViews = {
    OnboardingState.signIn: SignInView(),
    OnboardingState.signUp: SignUpView(),
    OnboardingState.otpSignup: OtpView(),
    OnboardingState.otpReset: OtpForgotView(),
    OnboardingState.forgotPassword: ForgotPasswordView(),
    OnboardingState.resetPassword: ResetPasswordView(),
    OnboardingState.resetSuccess: ResetSuccessView(),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.bgPrimary,
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                Get.offNamed(Routes.HOME);
              },
              child: const Text('Skip')),
        ],
      ),
      body: Stack(
        children: [
          //
          Obx(() => Visibility(
              visible: controller.isLoading.value,
              child: Center(child: CircularProgressIndicator.adaptive()))),
          //
          SingleChildScrollView(
            child: GetBuilder<OnboardingController>(
              id: 'toggleView',
              init: controller,
              builder: (controller) =>
                  _onboardingViews[controller.onboardingState]!,
            ),
          ),
        ],
      ),
    );
  }
}
