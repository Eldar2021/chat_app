import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/app_dailog.dart';
import '../services/home_service.dart';

class HomeController extends GetxController {
  final count = 0.obs;

  void increment() => count.value++;

  Future<void> logout() async {
    AppDaiLog.showLoading();
    await HomeService.logout();
    await Get.offAllNamed(Routes.FLASH_CHAT);
  }

  Future<void> delete() async {
    AppDaiLog.showLoading();
    await HomeService.delete();
    await Get.offAllNamed(Routes.FLASH_CHAT);
  }
}
