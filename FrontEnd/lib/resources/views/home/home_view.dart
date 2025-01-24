
import 'package:flutter/material.dart';
import 'package:frontend/app/controllers/home_controller.dart';
import 'package:frontend/resources/views/layouts/main_layouts.dart';
import 'home_list_users_view.dart';

class HomeView extends StatefulWidget{
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>{
  @override
  Widget build(BuildContext context) {
    final HomeController homeController = HomeController();

    return MainLayout(
        content: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder(
                  future: homeController.index(),
                  builder: (context, snapshot) => getUserListView(context, snapshot)
              )
            ],
          ),
        ),
    );
  }
}