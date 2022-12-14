import 'package:bachaau/drawer/beforehimedrawer.dart';
import 'package:bachaau/navbar/bottomnavbar.dart';
import 'package:bachaau/screens/home.dart';
import 'package:bachaau/screens/onboarding.dart';
import 'package:bachaau/screens/reigister.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: {
      //   'mainhome': (context) => const Home(),
      // },

      // home: RegisterPage(),
      // home: const OnboardingScreen(), Everything works fine up to verify.(otp aairaxaina)
      // before zoom drawer.
      // home: const Home(),

      // for zoom drawer.
      // home: BeforeHomeDrawer(),
      home: BottomNavBar(),

      theme: ThemeData(
        textTheme: GoogleFonts.firaSansTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.blueGrey,
      ),
    );
  }
}
