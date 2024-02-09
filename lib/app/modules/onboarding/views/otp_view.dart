import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:shipora_1/app/data/styles/text_styles.dart';
import 'package:shipora_1/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:shipora_1/app/routes/app_pages.dart';
import 'package:shipora_1/gen/assets.gen.dart';
import 'package:shipora_1/gen/colors.gen.dart';

class OtpView extends GetView<OnboardingController> {
  const OtpView({super.key});

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
          Text("Verification", style: MyTextStyles.heading),
          SizedBox(height: 24.h),
          RichText(
            text: TextSpan(
              text:
                  'We’ve sent a 4-digit confirmation code to\n+91 9988775544. ',
              style: MyTextStyles.caption,
              children: <TextSpan>[
                TextSpan(
                  text: "Change Number",
                  style: MyTextStyles.caption.copyWith(
                    color: ColorName.accentPrimary,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap =
                        () => controller.toggleView(OnboardingState.signUp),
                ),
              ],
            ),
          ),
          // **
          SizedBox(height: 32.h),
          // *
          Pinput(
            length: 4,
            defaultPinTheme: PinTheme(
              width: 70.w,
              height: 76.h,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffE3E3E3)),
                borderRadius: BorderRadius.circular(10.r),
              ),
              textStyle: TextStyle(
                fontSize: 36.sp,
                fontWeight: FontWeight.w400,
                color: ColorName.accentPrimary,
              ),
            ),
          ),
          SizedBox(height: 32.h),
          // *
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.offAllNamed(Routes.HOME);
              },
              child: const Text(
                "Verify",
              ),
            ),
          ),
          SizedBox(height: 14.h),
          // *
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Didn't receive code?",
              style: TextStyle(
                fontSize: 14.sp,
                color: ColorName.textCaption,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextButton(
                onPressed: () {
                  Get.offAllNamed(Routes.HOME);
                },
                style: TextButton.styleFrom(
                  foregroundColor: ColorName.accentPrimary,
                ),
                child: const Text("Resend Code")),
          ]),
          // *
          SizedBox(height: 14.h),
        ],
      ),
    );
  }
}
