import 'package:flutter_get_x_architecture/common/controllers/base_controller.dart';
import 'package:flutter_get_x_architecture/data/repositories/token_repository.dart';
import 'package:flutter_get_x_architecture/data/repositories/user_repository.dart';
import 'package:flutter_get_x_architecture/routes.dart';
import 'package:get/get.dart';

class LoginController extends BaseController {
  final UserRepository _userRepository;

  final TokenRepository _tokenRepository;

  var email = ''.obs;

  var password = ''.obs;

  LoginController(
    this._userRepository,
    this._tokenRepository,
  );

  void login() async {
    loading();

    try {
      final loginRes = await _userRepository.login(
        username: email.value,
        password: password.value,
      );

      if (loginRes.code == 0) {
        await _tokenRepository.saveToken(loginRes.accessToken);

        Get.toNamed(RouteConstant.HOME);
      } else {
        Get.snackbar('Error', loginRes.message);
      }
    } on Exception catch (e) {
      Get.snackbar('Error', 'Unknown error! Please try again.');
    }

    loaded();
  }
}
