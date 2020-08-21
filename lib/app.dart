import 'package:flutter/material.dart' hide Theme;
import 'package:flutter_get_x_architecture/generated/locale_keys.g.dart';
import 'package:flutter_get_x_architecture/resouces/theme.dart';
import 'package:flutter_get_x_architecture/routes.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: LocaleKeys.app_name.tr,
      theme: Theme.basic,
      getPages: routes(),
    );
  }
}
