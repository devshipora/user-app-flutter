import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:shipora_1/app/data/styles/text_styles.dart';
import 'package:shipora_1/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:shipora_1/gen/assets.gen.dart';
import 'package:shipora_1/gen/colors.gen.dart';

class SignUpView extends GetView<OnboardingController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Assets.illustrations.signup.image(scale: 1.5)),
          Text("Sign In", style: MyTextStyles.heading),
          // *
          SizedBox(
            height: 24.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("First Name", style: MyTextStyles.caption),
                        SizedBox(height: 4.h),
                        TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            hintText: "John",
                          ),
                        ),
                      ],
                    ),
                  ),
                  // *
                  SizedBox(width: 16.w),
                  // *
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Last Name", style: MyTextStyles.caption),
                        SizedBox(height: 4.h),
                        TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            hintText: "Doe",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 14.h),
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
          SizedBox(height: 14.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Email Adress", style: MyTextStyles.caption),
              SizedBox(height: 4.h),
              TextField(
                decoration: InputDecoration(
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  hintText: "john@doe.com",
                ),
              ),
            ],
          ),
          SizedBox(height: 14.h),
          // *
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Password", style: MyTextStyles.caption),
              SizedBox(height: 4.h),
              TextField(
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
          SizedBox(height: 14.h),
          // *
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Confirm Password", style: MyTextStyles.caption),
              SizedBox(height: 4.h),
              TextField(
                decoration: InputDecoration(
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  hintText: ".......",
                ),
              ),
            ],
          ),
          SizedBox(height: 14.h),
          // *
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                controller.toggleView(OnboardingState.otpSignup);
              },
              child: const Text(
                "Sign Up",
              ),
            ),
          ),
          // *
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text("Already have an account?"),
            TextButton(
                onPressed: () {
                  controller.toggleView(OnboardingState.signIn);
                },
                style: TextButton.styleFrom(
                  foregroundColor: ColorName.accentPrimary,
                ),
                child: const Text("Sign In")),
          ]),
          // *
          SizedBox(height: 14.h),
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
                padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 14.w),
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
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
