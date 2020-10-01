import 'package:get/state_manager.dart';

mixin LoadingController on GetxController {
  var isLoading = false.obs;

  void loading() => isLoading.value = true;

  void loaded() => isLoading.value = false;
}