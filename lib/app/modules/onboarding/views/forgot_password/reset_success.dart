import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shipora_1/app/data/styles/text_styles.dart';
import 'package:shipora_1/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:shipora_1/app/routes/app_pages.dart';
import 'package:shipora_1/gen/assets.gen.dart';
import 'package:shipora_1/gen/colors.gen.dart';

class ResetSuccessView extends GetView<OnboardingController> {
  const ResetSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          SizedBox(height: 634.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
            child: ElevatedButton(
                onPressed: () => Get.offAllNamed(Routes.HOME),
                child: const Text("Back To Home")),
          ),
        ]),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 255.h),
            Assets.illustrations.success.svg(),
            SizedBox(height: 28.h),
            const Text("Congratulations!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: ColorName.textHeading,
                )),
            SizedBox(height: 8.h),

            // *
            Text("Your Account is successfully created.",
                textAlign: TextAlign.center, style: MyTextStyles.caption),
          ],
        ),
      ],
    );
  }
}
