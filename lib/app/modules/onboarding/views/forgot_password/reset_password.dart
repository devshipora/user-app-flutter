import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:shipora_1/app/data/styles/text_styles.dart';
import 'package:shipora_1/app/modules/onboarding/controllers/onboarding_controller.dart';

class ResetPasswordView extends GetView<OnboardingController> {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Reset Password", style: MyTextStyles.heading),
          SizedBox(height: 24.h),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("New Password", style: MyTextStyles.caption),
              SizedBox(height: 4.h),
              TextField(
                obscuringCharacter: "*",
                obscureText: true,
                decoration: InputDecoration(
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  hintText: ".........",
                ),
              ),
            ],
          ),
          SizedBox(height: 32.h),
          // *
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Confirm Password", style: MyTextStyles.caption),
              SizedBox(height: 4.h),
              TextField(
                obscuringCharacter: "*",
                obscureText: true,
                decoration: InputDecoration(
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  hintText: "........",
                ),
              ),
            ],
          ),
          // *
          SizedBox(height: 32.h),
          // *
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                controller.toggleView(OnboardingState.resetSuccess);
              },
              child: const Text(
                "Reset Password",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
