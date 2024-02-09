import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shipora_1/app/data/styles/text_styles.dart';
import 'package:shipora_1/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:shipora_1/gen/assets.gen.dart';

class ForgotPasswordView extends GetView<OnboardingController> {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                controller.toggleView(OnboardingState.signUp);
              },
              child: Assets.icons.backButton.svg()),
          SizedBox(height: 24.h),
          Text("Forgot Password", style: MyTextStyles.heading),
          SizedBox(height: 24.h),
          Text(
            'We will send you an otp on +91*******544.',
            style: MyTextStyles.caption,
          ),
          // **
          SizedBox(height: 32.h),
          // *
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Mobile Number", style: MyTextStyles.caption),
              SizedBox(height: 4.h),
              TextField(
                decoration: InputDecoration(
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  hintText: "999999999",
                ),
              ),
            ],
          ),
          SizedBox(height: 32.h),
          // *
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                controller.toggleView(OnboardingState.otpReset);
              },
              child: const Text(
                "Continue",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
