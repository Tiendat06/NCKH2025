import 'package:flutter/material.dart';
import 'package:frontend/shared/constants/strings.dart';
import 'package:frontend/shared/utils/main_layout_utils.dart';

class MainLayout extends StatefulWidget{
  final Widget content;

  const MainLayout({super.key, required this.content});

  @override
  State<MainLayout> createState() => _MainLayoutState();

}

class _MainLayoutState extends State<MainLayout>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.titleName),
      ),
      body: widget.content,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: getCurrentIndex(context),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
        onTap: (index) {
          onClickNavigateMainPage(context, index);
        },
      ),
    );
  }
}