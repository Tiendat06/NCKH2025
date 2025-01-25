
import 'package:flutter/material.dart';
import 'package:frontend/app/controllers/home_controller.dart';
import 'package:frontend/app/models/user_model.dart';
import 'package:frontend/resources/views/layouts/main_layouts.dart';
import 'home_list_users_view.dart';

class HomeView extends StatefulWidget{
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>{
  final HomeController homeController = HomeController();
  List<UserModel> userList = [];

  Future<List<UserModel>> loadUsers() async{
    return await homeController.index();
  }

  Future<void> deleteUser(UserModel user) async {
    await homeController.deleteUserById(user.id);
    setState(() {
      loadUsers();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadUsers();
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        content: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder<List<UserModel>>(
                  future: loadUsers(),
                  builder: (context, snapshot) => getUserListView(context, snapshot, deleteUser)
              ),
            ],
          ),
        ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.pushNamed(context, '/add-user');
          },
          child: Icon(Icons.add)
      ),
    );
  }
}