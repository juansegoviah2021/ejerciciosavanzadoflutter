import 'package:deber1_avanzado/screens/04-consumo_api/user_controller.dart';
import 'package:deber1_avanzado/screens/05-pasar_datos/user_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
      init: UserController(),
      builder: (controller){
        return Scaffold(
            appBar: AppBar(
                title: Center(
                  child: Text("User api"),
                )
            ),
            body: ListView.builder(
                itemCount: controller.users.length,
                itemBuilder: (context, index) {
                  final user = controller.users[index];
                  return GestureDetector(
                    onTap: () {
                        controller.goDetail(user: user);
                    },
                    child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(user.avatar??""),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                        title: Text("${user.firstName} ${user.lastName}"),
                        subtitle: Text("${user.email}"),
                    ),
                  );
                }
            ),
        );
      },
    );
  }
}