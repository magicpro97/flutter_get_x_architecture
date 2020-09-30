import 'package:flutter_getx_architecture/data/sources/cache/base_cached_datasource.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


abstract class CachedBox extends BaseCachedDataSource {
  static const TOKEN_KEY = 'token';

  void saveToken(String token);

  String getToken();
}

class CachedBoxImpl extends CachedBox {
  final box = Get.find<GetStorage>();

  @override
  String getToken() => box.read(CachedBox.TOKEN_KEY);

  @override
  Future<void> saveToken(String token) => box.write(CachedBox.TOKEN_KEY, token);
}
