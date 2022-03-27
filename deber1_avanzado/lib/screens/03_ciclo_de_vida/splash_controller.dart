import 'package:deber1_avanzado/screens/01-contador/contador_screen.dart';
import 'package:get/get.dart';

//Ciclo de Vida de un Controller
class SplashController extends GetxController {
  
  @override
  void onInit() {
    super.onInit();
    print("onInit");
  }

  @override
  void onReady() {
    super.onReady();
    print("onReady");

    Future.delayed(const Duration(seconds: 3), (){
      //Get.to(()=>const ContadorScreen());
      Get.off(()=>const ContadorScreen());
    });
  }

  @override
  void onClose() {
    super.onClose();
    print("onClose");
  }
}