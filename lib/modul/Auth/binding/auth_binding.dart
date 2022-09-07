import 'package:get/get.dart';
import 'package:simple_app/modul/Auth/controller/login_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
  }
}
