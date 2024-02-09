import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shipora_1/gen/assets.gen.dart';
import 'package:shipora_1/gen/colors.gen.dart';

import '../controllers/shipment_controller.dart';

class ShipmentView extends GetView<ShipmentController> {
  ShipmentView({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Get.toNamed(Routes.SHIPMENT_CREATE);
        },
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: ColorName.accentPrimary.withOpacity(0.9),
                spreadRadius: 0,
                blurRadius: 40,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Center(
            child: Assets.icons.helpdesk.svg(width: 24.w, height: 24.h),
          ),
        ),
      ),
      key: _key,
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 24.w, top: 8.h),
          child: Center(
            child: InkWell(
                child: Assets.icons.menu.svg(width: 28.w, height: 28.h),
                onTap: () {
                  _key.currentState!.openDrawer();
                }),
          ),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: Assets.icons.notification.svg(width: 28.w, height: 28.h)),
          Container(
            margin: EdgeInsets.only(left: 8.w, top: 8.h, right: 24.w),
            padding: EdgeInsets.all(4.sp),
            decoration: BoxDecoration(
              color: ColorName.accentPrimary,
              borderRadius: BorderRadius.circular(32.r),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 14.r,
                  backgroundColor: Colors.white,
                  child: Assets.icons.shipment.svg(width: 20.w, height: 20.h),
                ),
                SizedBox(width: 11.w),
                Text("Shipment",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
                SizedBox(width: 19.w),
              ],
            ),
          ),
        ],
      ),
      //
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(top: 84.h),
          children: [
            ListTile(
              leading: Assets.icons.drawer.user.svg(),
              title: Text(
                'Personal Details',
                style: TextStyle(fontSize: 24.sp),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Assets.icons.drawer.orderHistory.svg(),
              title: Text(
                'Order History',
                style: TextStyle(fontSize: 24.sp),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Assets.icons.drawer.notification.svg(),
              title: Text(
                'Notifications',
                style: TextStyle(fontSize: 24.sp),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Assets.icons.drawer.address.svg(),
              title: Text(
                'Address',
                style: TextStyle(fontSize: 24.sp),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Assets.icons.drawer.about.svg(),
              title: Text(
                'About',
                style: TextStyle(fontSize: 24.sp),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Assets.icons.drawer.support.svg(),
              title: Text(
                'Support',
                style: TextStyle(fontSize: 24.sp),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Assets.icons.drawer.logout.svg(),
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 24.sp),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      //
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Assets.illustrations.shipmentOrderPlaceholder.image(scale: 1.5),
              SizedBox(height: 10.h),
              Text(
                "Your Order, Your Way",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                    color: ColorName.textCaption),
              ),
              SizedBox(height: 40.h),
              SizedBox(
                width: double.maxFinite,
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                          width: 2, color: ColorName.accentPrimary),
                    ),
                    onPressed: () {},
                    child: Text(
                      "+ Create an Order",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: ColorName.accentPrimary),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
