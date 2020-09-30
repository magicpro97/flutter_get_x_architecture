import 'package:flutter_getx_architecture/data/repositories/base_repository.dart';
import 'package:flutter_getx_architecture/data/sources/cache/cached_box.dart';
import 'package:get/get.dart';

class UserRepository extends BaseRepository {
  final cachedBox = Get.find<CachedBox>();
  
  bool isLogin({String username, String password}) {
    final token = cachedBox.getToken();

    if (token == null || token.isEmpty) {
      return false;
    }
    return true;
  }


}