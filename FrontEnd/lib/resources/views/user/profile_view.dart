
import 'package:flutter/material.dart';
import 'package:frontend/resources/styles/profile/profile_style.dart';
import 'package:frontend/resources/views/layouts/main_layouts.dart';

class ProfileView extends StatelessWidget{

  ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MainLayout(
        content: const Center(
          child: Text('Profile View', style: ProfileStyles.textProfileView,),
        )
    );
  }
}