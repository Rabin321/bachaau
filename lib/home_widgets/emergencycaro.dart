import 'package:bachaau/home_widgets/emergencies/police.dart';
import 'package:flutter/material.dart';

class Emergency extends StatelessWidget {
  const Emergency({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 210,
      // height: MediaQuery.of(context).size.height/0.02,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          Police(),
        ],
      ),
    );
  }
}