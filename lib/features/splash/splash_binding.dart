import 'package:flutter_get_x_architecture/features/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(Get.find()),
    );
  }
}
