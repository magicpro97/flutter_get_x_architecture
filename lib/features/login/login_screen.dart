import 'package:flutter/material.dart';
import 'package:flutter_get_x_architecture/features/login/login_controller.dart';
import 'package:get/get.dart';

class LoginScreen extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      errorText: controller.email.value != ''
                          ? GetUtils.isEmail(controller.email.value)
                              ? null
                              : 'Invalid Email'
                          : null,
                    ),
                    onChanged: (value) => controller.email.value = value,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                  obscureText: true,
                  onChanged: (value) => controller.password.value = value,
                ),
                MaterialButton(
                  onPressed: () => controller.login(),
                  color: Colors.blue,
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
        Visibility(
          visible: controller.isLoading.value,
          child: Positioned.fill(
            child: Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
              color: Colors.black.withOpacity(.3),
            ),
          ),
        ),
      ],
    );
  }
}
