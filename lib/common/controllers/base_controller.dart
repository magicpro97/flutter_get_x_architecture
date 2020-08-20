import 'package:get/state_manager.dart';

class BaseController extends GetxController {
  var isLoading = false.obs;

  void loading() => isLoading.value = true;

  void loaded() => isLoading.value = false;
}