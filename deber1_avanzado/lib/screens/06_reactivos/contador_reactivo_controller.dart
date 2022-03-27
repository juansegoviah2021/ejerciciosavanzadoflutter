import 'package:get/get.dart';

class ContadorReactivoController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
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

  RxInt number = RxInt(0);
  RxString name = RxString("");
  //RxList
  //RxMap
  //RxBool
  //RxDouble

  RxInt counter = RxInt(0);
  RxInt counter2 = RxInt(20);

  void increment(){
    counter++;
  }

  void decrement(){
    counter2--;
  }
}