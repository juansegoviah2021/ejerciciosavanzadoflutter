import 'package:deber1_avanzado/screens/03_ciclo_de_vida/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller){
        print("SplashScreen()");
        return const Scaffold(
            /*appBar: AppBar(
              title: const Text("Ciclo de Vida de Controller"),
            ),*/
            body: Center(
              child: CircularProgressIndicator(

              ),
            ),
        );
      },
    );
  }
}