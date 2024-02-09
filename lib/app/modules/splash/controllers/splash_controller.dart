import 'package:get/get.dart';
import 'package:shipora_1/app/routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed(Routes.ONBOARDING);
    });
    super.onReady();
  }

  void increment() => count.value++;
}
