import 'package:flutter_get_x_architecture/common/controllers/base_controller.dart';
import 'package:flutter_get_x_architecture/data/repositories/user_repository.dart';
import 'package:flutter_get_x_architecture/routes.dart';
import 'package:get/get.dart';

class SplashController extends BaseController {
  final UserRepository _userRepository;

  SplashController(this._userRepository) {
    Future.delayed(Duration(seconds: 3), () {
      checkAuthentication();
    });
  }

  void checkAuthentication() {
    loading();

    if (_userRepository.isLogin()) {
      Get.toNamed(RouteConstant.HOME);
    } else {
      Get.toNamed(RouteConstant.LOGIN);
    }

    loaded();
  }
}
