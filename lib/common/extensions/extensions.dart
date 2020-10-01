import 'package:get/get.dart' show RxBool;
import 'package:rxdart/rxdart.dart';

extension FutureEx on Future {
  Future loading(RxBool loading) => Stream.fromFuture(this)
      .doOnListen(() => loading.value = true)
      .doOnDone(() => loading.value = false)
      .single;
}
