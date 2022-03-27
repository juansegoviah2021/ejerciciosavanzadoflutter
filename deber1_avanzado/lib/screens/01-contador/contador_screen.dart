import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'contador_controller.dart';

class ContadorScreen extends StatelessWidget {
  const ContadorScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContadorController>(
       init: ContadorController(),
      builder: (controller){
          print("Dibujando widgets");
          return Scaffold(
              appBar: AppBar(
                title: Text("Introducción a Getx"),
              ),
              body: Center(      
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      '${controller.counter}',
                      style: Theme.of(context).textTheme.headline4,
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