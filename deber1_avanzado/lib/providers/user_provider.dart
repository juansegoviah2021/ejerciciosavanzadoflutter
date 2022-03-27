import 'package:deber1_avanzado/models/user_model.dart';
import 'package:dio/dio.dart';

class UserProvider {
  Future<List<UserModel>> getUser() async {
    final dio = Dio();
    final response = await dio.get(
        "https://reqres.in/api/users",
        queryParameters: {
          "page": 1,
        }
    );    

    //print(response.data["data"]);
    return (response.data["data"] as List).
           map((json) => UserModel.fromJson(json)).
           toList();
  }
}