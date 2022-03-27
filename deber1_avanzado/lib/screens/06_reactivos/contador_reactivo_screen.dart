import 'package:deber1_avanzado/screens/06_reactivos/contador_reactivo_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContadorReactivoScreen extends StatelessWidget {
  const ContadorReactivoScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Dibujando Widgets");
    return GetBuilder<ContadorReactivoController>(
        init: ContadorReactivoController(),
        builder: (controller) {
           return Scaffold(
              appBar: AppBar(
                title: const Text("Reactivos en Getx"),
              ),
              body: Center(      
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                    Obx( () {
                        print("Dibujando Text Resta");
                        return Text(
                          '${controller.counter2}',
                          style: Theme.of(context).textTheme.headline4,
                        );
                      }
                    ),
                    const Divider(),
                    Obx( () {
                        print("Dibujando Text suma");
                        return Text(
                          '${controller.counter}',
                          style: Theme.of(context).textTheme.headline4,
                        );
                      }
                    ),
                  ],
                ),
              ),
              floatingActionButton: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                      onPressed: controller.decrement,
                      tooltip: 'Decrement',
                      child: const Icon(Icons.delete),
                  ),
                  const SizedBox(width: 10.0,),
                  FloatingActionButton(
                      onPressed: controller.increment,
                      tooltip: 'Increment',
                      child: const Icon(Icons.add),
                  ),
                ],
              ),
           );
        },
    );
  }
}