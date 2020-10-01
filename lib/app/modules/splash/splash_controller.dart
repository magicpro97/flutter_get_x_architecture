import 'package:flutter_get_x_architecture/app/routes/app_pages.dart';
import 'package:flutter_get_x_architecture/common/controllers/loading_controller.dart';
import 'package:flutter_get_x_architecture/common/extensions/extensions.dart';
import 'package:flutter_get_x_architecture/data/repositories/user_repository.dart';
import 'package:get/get.dart';

class SplashController extends GetxController with LoadingController {
  final UserRepository _userRepository;

  SplashController(this._userRepository);

  @override
  void onInit() {
    super.onInit();

    Future.delayed(Duration(seconds: 3), () {
      checkAuthentication();
    }).loading(isLoading);
  }

  void checkAuthentication() {
    printInfo(info: "isLogin:::${_userRepository.isLogin()}");

    if (_userRepository.isLogin()) {
      Get.offNamed(Routes.HOME);
    } else {
      Get.offNamed(Routes.LOGIN);
    }
  }
}
