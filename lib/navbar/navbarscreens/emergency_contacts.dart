import 'package:bachaau/utils/searchbar.dart';
import 'package:flutter/material.dart';

class EmergencyContacts extends StatelessWidget {
  const EmergencyContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: SearchBarWidget()
          // listtile of emergency numbers and contacts.

          ),
    );
  }
}
