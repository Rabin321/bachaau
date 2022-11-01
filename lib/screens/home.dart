import 'dart:math';

import 'package:bachaau/home_widgets/emergencycaro.dart';
import 'package:bachaau/home_widgets/explorelive.dart';
import 'package:bachaau/home_widgets/life_save_options/policestations.dart';
import 'package:bachaau/location/send_location.dart';
import 'package:bachaau/navbar/bottomnavbar.dart';
import 'package:bachaau/widgets/customappbar.dart';
import 'package:bachaau/widgets/customcarousel.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pageController = PageController();
  int currentPage = 0;

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  changePage(int page) {
    pageController.jumpToPage(page);
    setState(() {
      currentPage = page;
    });
  }
  // int qIndex = 0;

  // getRandomQuote() {
  //   Random random = Random();

  //   setState(() {
  //     qIndex = random.nextInt(4);
  //   });
  // }

  // @override
  // void initState() {
  //   getRandomQuote();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 246, 248),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomAppBar(
                  // quoteIndex: qIndex,
                  // onTap: () {
                  //   getRandomQuote();
                  // },
                  ),
              Expanded(
                  child: ListView(
                shrinkWrap: true,
                children: const [
                  CustomCarousel(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Text(
                      "Emergency",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                    ),
                  ),
                  Emergency(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    child: Text(
                      "Explore Life Save",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                    ),
                  ),
                  LiveSave(),
                  SendLocation(),
                ],
              )),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: const BottomNavBar(),

      // bottomNavigationBar: CurvedNavigationBar(
      //   // key: _bottomNavigationKey,
      //   // index: 0,

      //   height: 50.0,
      //   items: const <Widget>[
      //     Icon(Icons.home, size: 25),
      //     Icon(Icons.contact_phone_rounded, size: 25),
      //     Icon(Icons.account_circle, size: 25),
      //     Icon(Icons.shopping_cart, size: 25),

      //     Icon(Icons.menu, size: 25),

      //     // Icon(Icons.perm_identity, size: 30),
      //   ],
      //   color: Colors.blueGrey[200]!,
      //   buttonBackgroundColor: Colors.orange,
      //   backgroundColor: Colors.transparent,
      //   animationCurve: Curves.easeInOut,
      //   animationDuration: const Duration(milliseconds: 300),
      //   onTap: changePage,
      //   // letIndexChange: (index) => true,
      // ),
    );
  }
}
