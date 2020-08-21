import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_get_x_architecture/features/splash/splash_bloc.dart';
import 'package:flutter_get_x_architecture/features/splash/splash_controller.dart';
import 'package:flutter_get_x_architecture/features/splash/splash_screen.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(Get.find()),
    );
  }
}

class SplashBindingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) =>
          SplashBloc(Get.find())..add(SplashAction.checkAuthentication()),
      child: SplashBlocScreen(),
    );
  }
}
