import 'package:flutter/material.dart';

int getCurrentIndex(BuildContext context) {
  String? currentRoute = ModalRoute.of(context)?.settings.name;
  if (currentRoute == '/home') return 0;
  if (currentRoute == '/profile') return 1;
  if (currentRoute == '/settings') return 2;
  return 0;
}

void onClickNavigateMainPage(BuildContext context, int index) {
  String? routeName = '/home';
  if (index == 0) {
    routeName = '/home';
  } else if (index == 1) {
    routeName = '/profile';
  } else if (index == 2) {
    routeName = '/settings';
  }
  if(ModalRoute.of(context)?.settings.name != routeName) {
    Navigator.pushReplacementNamed(
        context,
        routeName
    );
  }
}