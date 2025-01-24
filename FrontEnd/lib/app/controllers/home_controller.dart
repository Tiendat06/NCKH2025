import 'package:frontend/app/models/user_model.dart';
import 'package:frontend/app/services/user_service.dart';

class HomeController{
  static UserService userService = UserService();

  Future<List<UserModel>> index() async {
    var userList = await userService.getUsersList();
    // print('User List: $userList');
    return userList;
  }
}