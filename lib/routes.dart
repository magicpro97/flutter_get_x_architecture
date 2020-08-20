import 'package:flutter_get_x_architecture/features/home/home_screen.dart';
import 'package:flutter_get_x_architecture/features/login/login_binding.dart';
import 'package:flutter_get_x_architecture/features/login/login_screen.dart';
import 'package:flutter_get_x_architecture/features/splash/splash_binding.dart';
import 'package:flutter_get_x_architecture/features/splash/splash_screen.dart';
import 'package:get/get.dart';

class RouteConstant {
  static const HOME = '/home';

  static const LOGIN = '/login';
}

List<GetPage> routes() => [
      GetPage(
        name: '/',
        page: () => SplashScreen(),
        binding: SplashBinding(),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: '/login',
        page: () => LoginScreen(),
        binding: LoginBinding(),
        transition: Transition.fade,
      ),
      GetPage(
        name: '/home',
        page: () => HomeScreen(),
      ),
    ];
