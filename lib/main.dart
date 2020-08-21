import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_get_x_architecture/app.dart';
import 'package:flutter_get_x_architecture/data/repositories/token_repository.dart';
import 'package:flutter_get_x_architecture/data/repositories/user_repository.dart';
import 'package:flutter_get_x_architecture/data/sources/cache/cached_box.dart';
import 'package:flutter_get_x_architecture/data/sources/remote/user_service.dart';
import 'package:flutter_get_x_architecture/generated/codegen_loader.g.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _setUp();

  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('en'),
      ],
      path: 'assets/translations', // <-- change patch to your
      fallbackLocale: Locale('en'),
      child: App(),
      assetLoader: CodegenLoader(),
    ),
  );
}

Future<void> _setUp() async {
  await Hive.initFlutter();
  await Get.putAsync<Box<String>>(() => Hive.openBox('cached_box'));
  Get.put<Dio>(
    Dio()..interceptors.add(PrettyDioLogger()),
  );

  Get.put<UserService>(UserServiceImpl(Get.find()));

  Get.put<CachedBox>(CachedBoxImpl(Get.find()));

  Get.put<UserRepository>(UserRepositoryImpl(Get.find(), Get.find()));

  Get.put<TokenRepository>(TokenRepositoryImpl(Get.find()));
}
