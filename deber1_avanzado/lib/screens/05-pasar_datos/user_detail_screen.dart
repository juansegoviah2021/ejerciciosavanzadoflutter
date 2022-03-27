import 'package:deber1_avanzado/screens/05-pasar_datos/user_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class UserDetailScreen extends StatelessWidget {
  const UserDetailScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserDetailController>(
      init: UserDetailController(),
      builder: (controller){
        return Scaffold(
            appBar: AppBar(
              title: const Text("Detail User"),
            ),
            body:Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        radius: 80.0,
                        backgroundImage: NetworkImage("${controller.user.avatar}"),
                    ),
                    const Divider(),
                    Text("${controller.user.firstName} ${controller.user.lastName}"),
                    Text("${controller.user.email}"),
                  ],
              ),
            ),
        );
      },
    );
  }
}