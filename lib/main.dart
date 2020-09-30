import 'package:flutter/material.dart';
import 'package:flutter_getx_architecture/di.dart';
import 'package:flutter_getx_architecture/app.dart';
import 'package:flutter_translate/localization_delegate.dart';
import 'package:flutter_translate/localized_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setUp();

  var delegate = await LocalizationDelegate.create(
    fallbackLocale: 'en',
    supportedLocales: ['en'],
  );

  runApp(
    LocalizedApp(
      delegate,
      App(),
    ),
  );
}
