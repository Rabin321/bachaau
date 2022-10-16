import 'dart:math';

import 'package:bachaau/widgets/customappbar.dart';
import 'package:bachaau/widgets/customcarousel.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});


    @override
  State<Home> createState() => _HomeState();
}
 

class _HomeState extends State<Home> {
   int qIndex = 0;
     


getRandomQuote(){
  Random random = Random();
  
  setState(() {
    qIndex = random.nextInt(4);
  });
  }
  @override
  void initState(){
    getRandomQuote();
    super.initState();
      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children:  [
           CustomAppBar(
           quoteIndex: qIndex,
           onTap:(){

            getRandomQuote();
           }
           ),
           const CustomCarousel(),
            ],
          ),
        ),
      ),
    );
  }

}

