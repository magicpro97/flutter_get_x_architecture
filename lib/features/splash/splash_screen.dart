import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_get_x_architecture/features/splash/splash_bloc.dart';
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

class SplashBlocScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Splash Screen'),
            BlocBuilder<SplashBloc, SplashState>(
              cubit: context.bloc<SplashBloc>(),
              builder: (context, state) => state.maybeWhen(
                orElse: () => Container(),
                loading: () => CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
