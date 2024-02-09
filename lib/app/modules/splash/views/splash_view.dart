import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shipora_1/gen/assets.gen.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Assets.logoSplash.image(scale: 1.5)),
    );
  }
}
