import 'package:bachaau/home_widgets/life_save_options/busstation.dart';
import 'package:bachaau/home_widgets/life_save_options/hospitals.dart';
import 'package:bachaau/home_widgets/life_save_options/maaitinepal.dart';
import 'package:bachaau/home_widgets/life_save_options/pharmacy.dart';
import 'package:bachaau/home_widgets/life_save_options/policestations.dart';
import 'package:flutter/material.dart';

class LiveSave extends StatelessWidget {
  const LiveSave({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      height: MediaQuery.of(context).size.height * 0.11,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: const [
          PoliceStation(),
          Hospital(),
          BusStation(),
          Pharmacy(),
          MaaitiNepal(),
        ],
      ),
    );
  }
}
