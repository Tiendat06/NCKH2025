import 'package:frontend/app/repository/user_repository.dart';
import '../models/user_model.dart';

class UserService{
  static UserRepository userRepository = UserRepository();

  Future<List<UserModel>> getUsersList() async {
    // business logic
    var rawUserListData = await userRepository.getUsersList();
    var data = rawUserListData['data'];
    // print('Data: $data');
    return (data as List).map((item) => UserModel.fromJson(item)).toList();
  }
}