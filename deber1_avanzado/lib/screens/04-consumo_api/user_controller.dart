import 'package:deber1_avanzado/models/user_model.dart';
import 'package:deber1_avanzado/providers/user_provider.dart';
import 'package:deber1_avanzado/screens/05-pasar_datos/user_detail_screen.dart';
import 'package:get/get.dart';

class UserController extends GetxController {

  final _userProvider = UserProvider();
  List<UserModel> users = [];

  @override
  void onInit() {
    
    super.onInit();

    loadUser();
  }

  @override
  void onReady() {
    
    Get.showSnackbar(
      const GetSnackBar(
        title: "Title message",
        message: "Esto es un texto",
        duration: Duration(seconds: 3),
      ),
    );

    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  loadUser() async {
    users = await _userProvider.getUser();
    update();
  }

  goDetail({required UserModel user})
  {
    Get.to(()=> UserDetailScreen(), arguments: user);
  }

}