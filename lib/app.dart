import 'package:flutter/material.dart' hide Theme;
import 'package:flutter_getx_architecture/resouces/theme.dart';
import 'package:flutter_getx_architecture/routes.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: Theme.basic,
      getPages: routes(),
    );
  }
}
