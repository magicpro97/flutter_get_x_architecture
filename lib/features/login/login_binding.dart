import 'package:flutter_get_x_architecture/features/login/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut<LoginController>(
      () => LoginController(Get.find(), Get.find()),
    );
  }
}
