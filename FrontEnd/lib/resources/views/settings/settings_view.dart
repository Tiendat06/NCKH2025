import 'package:flutter/material.dart';
import 'package:frontend/resources/views/layouts/main_layouts.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return const MainLayout(
        content: Center(
          child: Text('Settings views'),
        )
    );
  }
}
