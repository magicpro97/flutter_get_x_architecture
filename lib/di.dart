import 'package:flutter_getx_architecture/data/sources/cache/cached_box.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DITag {
  static const CACHED_BOX = 'cached_box';
}

Future<void> setUp() async {
  Get.put(
    GetStorage(),
    permanent: true,
  );

  Get.lazyPut<CachedBox>(() => CachedBoxImpl());
}
