import 'package:get/get.dart';

class GestionIdController extends GetxController {
  int counter = 10;

  void increment(){
    counter++;
    update(["counter"]);
  }
}