import 'package:flutter/material.dart';
import 'package:frontend/shared/constants/strings.dart';
import 'package:frontend/shared/utils/main_layout_utils.dart';

class MainLayout extends StatefulWidget{
  final AppBar? appBar;
  final Widget content;
  final Widget? floatingActionButton;

  const MainLayout({super.key, this.appBar, required this.content, this.floatingActionButton});

  @override
  State<MainLayout> createState() => _MainLayoutState();

}

class _MainLayoutState extends State<MainLayout>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: widget.appBar,
        body: widget.content,
        floatingActionButton: widget.floatingActionButton,
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
      ),
    );
  }
}