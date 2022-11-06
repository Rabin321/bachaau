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

class Contacts {
  static final List<String> emcontact = [
    'Bhaktapur Hospital',
    'Madhyapur Hospital',
    "abc",
    'qwe',
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = [];
    matches.addAll(emcontact);
    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}
