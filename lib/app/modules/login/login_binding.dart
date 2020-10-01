import 'package:flutter_get_x_architecture/app/modules/login/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(Get.find(), Get.find()),
    );
  }
}
