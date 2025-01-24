import 'dart:convert';
import 'package:http/http.dart' as http;

class UserRepository{

  Future<Map<String, dynamic>> getUsersList() async {
    try{
      // https://jsonplaceholder.typicode.com/users
      final response = await http.get(Uri.parse('http://localhost/api/get-students.php'));
      if(response.statusCode == 200) {
        Map<String, dynamic> data = json.decode(response.body);
        // print('Data: $data');
        return data;
      } else{
        throw Exception('Bad Request !');
      }
    } catch(e){
      throw Exception('Failed to load users: $e');
    }
  }
}