import 'package:deber1_avanzado/models/user_model.dart';
import 'package:get/get.dart';

class UserDetailController extends GetxController {

  UserModel user = UserModel();

  @override
  void onInit() {
    super.onInit();

    user = Get.arguments as UserModel;
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}