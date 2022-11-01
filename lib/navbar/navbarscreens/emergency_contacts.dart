import 'package:flutter/material.dart';

class EmergencyContacts extends StatelessWidget {
  const EmergencyContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Emergency Contacts'),
        ),
        // listtile of emergency numbers and contacts.
        body: SafeArea(
          child: ListView(
            children: [
              const Text(
                "Emergency Contacts",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
              ),
              ListTile(
                leading: const Icon(Icons.phone),
                title: const Text("Police"),
                subtitle: const Text("100"),
                trailing: const Icon(Icons.call),
              ),
              ListTile(
                leading: const Icon(Icons.phone),
                title: const Text("Fire Brigade"),
                subtitle: const Text("101"),
                trailing: const Icon(Icons.call),
              ),
              ListTile(
                leading: const Icon(Icons.phone),
                title: const Text("Ambulance"),
                subtitle: const Text("102"),
                trailing: const Icon(Icons.call),
              ),
              ListTile(
                leading: const Icon(Icons.phone),
                title: const Text("Ambulance"),
                subtitle: const Text("102"),
                trailing: const Icon(Icons.call),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
