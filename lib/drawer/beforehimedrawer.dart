import 'package:bachaau/drawer/drawerscreens/aboutus.dart';
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
      borderRadius: 40,
      style: DrawerStyle.defaultStyle,
      // moveMenuScreen: false,
      showShadow: true,
      drawerShadowsBackgroundColor: Colors.blueGrey,
      menuBackgroundColor: Color.fromARGB(255, 158, 149, 142),
      mainScreenTapClose: true,
      // menuScreenTapClose: true,
      androidCloseOnBackTap: true,

      angle: -10,
      slideWidth: MediaQuery.of(context).size.width * 0.60,
      // drawerShadowsBackgroundColor: Colors.white,
      //  mainScreen: const Home(),
      mainScreen: getScreen(),
      menuScreen: Builder(
        builder: (context) => MenuScreen(
          currentItem: currentItem,
          onSelectedItem: (item) {
            setState(() {
              currentItem = item;
            });
            ZoomDrawer.of(context)!.close();
          },
        ),
      ),
    );
  }

  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.home:
        return const Home();
      case MenuItems.help:
        return const Home();
      case MenuItems.feedback:
        return const Home();
      case MenuItems.invite:
        return const Home();
      case MenuItems.rate:
        return const Home();
      case MenuItems.aboutus:
        return const AboutUs();
      default:
        return const Home();
    }
  }
}
