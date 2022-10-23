import 'package:bachaau/drawer/menuscreen.dart';
import 'package:bachaau/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class BeforeHomeDrawer extends StatefulWidget {
  const BeforeHomeDrawer({super.key});

  @override
  State<BeforeHomeDrawer> createState() => _BeforeHomeDrawerState();
}

class _BeforeHomeDrawerState extends State<BeforeHomeDrawer> {
  MenuItemharu currentItem = MenuItems.home;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      style: DrawerStyle.defaultStyle,
      // moveMenuScreen: false,
      showShadow: true,
      angle: -10,
      // drawerShadowsBackgroundColor: Colors.white,
      mainScreen: const Home(),
      menuScreen: MenuScreen(
        currentItem: currentItem,
        onSelectedItem: (item) {},
      ),
    );
  }
}
