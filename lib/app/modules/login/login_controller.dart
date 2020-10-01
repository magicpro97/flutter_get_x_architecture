import 'package:flutter_get_x_architecture/app/routes/app_pages.dart';
import 'package:flutter_get_x_architecture/common/controllers/loading_controller.dart';
import 'package:flutter_get_x_architecture/common/extensions/extensions.dart';
import 'package:flutter_get_x_architecture/data/repositories/token_repository.dart';
import 'package:flutter_get_x_architecture/data/repositories/user_repository.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with LoadingController {
  final UserRepository _userRepository;

  final TokenRepository _tokenRepository;

  final email = ''.obs;

  final password = ''.obs;

  LoginController(
    this._userRepository,
    this._tokenRepository,
  );

  Future<void> login() => () async {
        try {
          final loginRes = await _userRepository.login(
            username: email.value,
            password: password.value,
          );

          if (loginRes.code == 0) {
            await _tokenRepository.saveToken(loginRes.accessToken);

            Get.toNamed(Routes.HOME);
          } else {
            Get.snackbar('Error', loginRes.message);
          }
        } on Exception catch (e) {
          Get.snackbar('Error', 'Unknown error! Please try again.');
        }
      }.loading(isLoading);
}
