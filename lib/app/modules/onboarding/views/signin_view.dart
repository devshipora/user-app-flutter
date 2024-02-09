import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shipora_1/app/data/styles/text_styles.dart';
import 'package:shipora_1/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:shipora_1/app/routes/app_pages.dart';
import 'package:shipora_1/gen/assets.gen.dart';
import 'package:shipora_1/gen/colors.gen.dart';

class SignInView extends GetView<OnboardingController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Form(
        key: controller.loginFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Sign In", style: MyTextStyles.heading),
            // *
            SizedBox(
              height: 24.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Mobile Number", style: MyTextStyles.caption),
                SizedBox(height: 4.h),
                TextField(
                  controller: controller.login_mobileController,
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
            SizedBox(
              height: 14.h,
            ),
            // *
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Password", style: MyTextStyles.caption),
                SizedBox(height: 4.h),
                TextField(
                  controller: controller.login_passwordController,
                  obscureText: true,
                  obscuringCharacter: "*",
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
            // *
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: ColorName.accentPrimary),
                  onPressed: () =>
                      controller.toggleView(OnboardingState.forgotPassword),
                  child: const Text("Forgot Password?"),
                ),
              ],
            ),
            // *
            SizedBox(
              height: 66.h,
            ),
            // *
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.login(() {
                          Get.toNamed(Routes.HOME);
                        });
                      },
                      child: const Text(
                        "Sign In",
                      ),
                    ),
                  ),
                  // *
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Text("Don't have an account?"),
                    TextButton(
                        onPressed: () {
                          controller.toggleView(OnboardingState.signUp);
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: ColorName.accentPrimary,
                        ),
                        child: const Text("Sign Up")),
                  ]),
                  // *
                  SizedBox(height: 39.h),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 2,
                          color: const Color(0xffC8CBCB),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: Text(
                          "or continue with",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: ColorName.textCaption,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 2,
                          color: const Color(0xffC8CBCB),
                        ),
                      )
                    ],
                  ),
                  // *
                  SizedBox(height: 30.h),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 12.h, horizontal: 14.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Assets.icons.google.svg(
                              width: 24,
                              height: 24,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Google",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
