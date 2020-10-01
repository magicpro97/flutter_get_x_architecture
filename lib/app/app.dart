import 'dart:ui' as ui;

import 'package:flutter/material.dart' hide Theme;
import 'package:flutter_get_x_architecture/app/routes/app_pages.dart';
import 'package:flutter_get_x_architecture/generated/locales.g.dart';
import 'package:flutter_get_x_architecture/resouces/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translationsKeys: AppTranslation.translations,
      locale: ui.window.locale,
      fallbackLocale: Locale('en'),
      supportedLocales: [
        Locale('en'),
      ],
      title: LocaleKeys.app_name.tr,
      theme: Theme.basic,
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
    );
  }
}
