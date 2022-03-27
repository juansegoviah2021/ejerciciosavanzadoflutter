import 'package:deber1_avanzado/screens/01-contador/contador_screen.dart';
import 'package:deber1_avanzado/screens/02-manejo_de_ids/gestion_id_screen.dart';
import 'package:deber1_avanzado/screens/03_ciclo_de_vida/splash_screen.dart';
import 'package:deber1_avanzado/screens/04-consumo_api/user_screen.dart';
import 'package:deber1_avanzado/screens/06_reactivos/contador_reactivo_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const ContadorScreen()
      //home: const GestionIdScreen()
      //home: const SplashScreen()
      //home: const UserScreen()
      home: const ContadorReactivoScreen()
    );
  }
}