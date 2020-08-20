import 'package:flutter_get_x_architecture/data/sources/cache/base_cached_datasource.dart';
import 'package:hive/hive.dart';

abstract class CachedBox extends BaseCachedDataSource {
  static const TOKEN_KEY = 'token';

  final Box<String> _box;

  CachedBox(this._box);

  Future<void> saveToken(String token);

  String getToken();
}

class CachedBoxImpl extends CachedBox {
  CachedBoxImpl(Box<String> box) : super(box);

  @override
  Future<void> close() => _box.close();

  @override
  String getToken() => _box.get(CachedBox.TOKEN_KEY);

  @override
  Future<void> saveToken(String token) => _box.put(CachedBox.TOKEN_KEY, token);
}
