import 'package:flutter/material.dart';
import 'package:flutter_get_x_architecture/features/splash/splash_controller.dart';
import 'package:get/state_manager.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Splash Screen'),
            controller.isLoading.value
                ? CircularProgressIndicator()
                : Container(),
          ],
        ),
      ),
    );
  }
}
