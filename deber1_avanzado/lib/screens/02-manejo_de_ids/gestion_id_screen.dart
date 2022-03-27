import 'package:deber1_avanzado/screens/02-manejo_de_ids/gestion_id_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class GestionIdScreen extends StatelessWidget {
  const GestionIdScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GestionIdController> (
      init: GestionIdController(),
      builder: (controller){
        return Scaffold(
            appBar: AppBar(
                title: Text("Gestión por ID"),
              ),
              body: Center(      
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                    GetBuilder<GestionIdController>(
                      id:"counter",
                      builder: (__)=>Text(
                          '${controller.counter}',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                    ),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                //onPressed: controller.increment,
                onPressed: (){
                    controller.increment();
                },
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
        );
      },
    );
  }
}