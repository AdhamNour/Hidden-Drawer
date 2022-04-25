import 'package:flutter/material.dart';
import 'package:hidden_drawer/Pages/HomePage.dart';
import 'package:hidden_drawer/Pages/SettingPage.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: "HomePage",
              baseStyle: const TextStyle(),
              selectedStyle: const TextStyle()),
          const HomePage()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: "Settings",
              baseStyle: const TextStyle(),
              selectedStyle: const TextStyle()),
          const SettingsPage())
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _pages,
      backgroundColorMenu: Colors.deepPurple,
      initPositionSelected: 0,
    );
  }
}
