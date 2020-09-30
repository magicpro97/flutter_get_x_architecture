import 'package:flutter_getx_architecture/features/home/home_screen.dart';
import 'package:flutter_getx_architecture/features/login/login_screen.dart';
import 'package:flutter_getx_architecture/features/splash_screen.dart';
import 'package:get/get.dart';

List<GetPage> routes() => [
      GetPage(
        name: '/',
        page: () => SplashScreen(),
        transition: Transition.fade,
      ),
      GetPage(
        name: '/login',
        page: () => LoginScreen(),
      ),
      GetPage(
        name: '/home',
        page: () => HomeScreen(),
      ),
    ];
