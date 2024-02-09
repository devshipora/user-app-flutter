import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shipora_1/app/data/styles/text_styles.dart';
import 'package:shipora_1/app/routes/app_pages.dart';
import 'package:shipora_1/gen/assets.gen.dart';
import 'package:shipora_1/gen/colors.gen.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16.h,
                ),
                const Text(
                  "Hi Jon",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: ColorName.accentPrimary),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.h, bottom: 29.h),
                  child:
                      Text("Welcome to Shipora", style: MyTextStyles.caption),
                ),
                // *
                Text("Explore", style: MyTextStyles.heading),
                SizedBox(height: 12.h),
                // *
                const MarketPlaceCard(),
                SizedBox(height: 12.h),
                const ShipmentCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ShipmentCard extends StatelessWidget {
  const ShipmentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.offNamed(Routes.SHIPMENT),
      child: Container(
        padding:
            EdgeInsets.only(top: 4.h, bottom: 14.h, left: 21.w, right: 21.w),
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12.r)),
          gradient: const LinearGradient(
            colors: [
              Color(0xff089FBE),
              Color(0xffAFF2FF),
              Color(0xff089FBE),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                // width: double.maxFinite,
                child: Assets.illustrations.shipment.image(scale: 1.5)),
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "GO TO",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Shipment",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.h, bottom: 10.h),
                  child: Text(
                    "Ship from Anywhere in India, be it Amazon, flipkart or your home",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                // *
                Container(
                  width: double.maxFinite,
                  height: 35.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(24.r)),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Enter Here",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: ColorName.accentPrimary,
                            )),
                        const Icon(Icons.east, color: ColorName.accentPrimary),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MarketPlaceCard extends StatelessWidget {
  const MarketPlaceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: ()=> Get.toNamed(Routes.MARKETPLACE),
      child: Container(
        padding:
            EdgeInsets.only(top: 4.h, bottom: 14.h, left: 21.w, right: 21.w),
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12.r)),
          gradient: const LinearGradient(
            colors: [
              Color(0xff089FBE),
              Color(0xffAFF2FF),
              Color(0xff089FBE),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                // width: double.maxFinite,
                child: Assets.illustrations.marketplace.image(scale: 1.5)),
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "GO TO",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "MarketPlace",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.h, bottom: 10.h),
                  child: Text(
                    "thousands of products from India to be explored.",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                // *
                Container(
                  width: double.maxFinite,
                  height: 35.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(24.r)),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Enter Here",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: ColorName.accentPrimary,
                            )),
                        const Icon(Icons.east, color: ColorName.accentPrimary),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
