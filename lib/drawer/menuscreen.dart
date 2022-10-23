import 'package:flutter/material.dart';

class MenuItems {
  static const home = MenuItemharu('Home', Icons.home);
  static const help = MenuItemharu('Help', Icons.help);
  static const feedback = MenuItemharu('Feedback', Icons.feedback);
  static const invite = MenuItemharu('Invite friends', Icons.inventory);
  static const rate = MenuItemharu('Rate app', Icons.rate_review);
  static const aboutus = MenuItemharu('About us', Icons.info);
  // static const home = MenuItem('Home', Icons.home);

  static const all = <MenuItemharu>[
    home,
    help,
    feedback,
    invite,
    rate,
    aboutus,
  ];
}

class MenuScreen extends StatelessWidget {
  final MenuItemharu currentItem;
  final ValueChanged<MenuItem> onSelectedItem;
  const MenuScreen(
      {super.key, required this.currentItem, required this.onSelectedItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 246, 248),
      body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Spacer(),
        ...MenuItems.all.map(buildMenuItem).toList(),
        const Spacer(flex: 2),
      ])),
    );
  }

  Widget buildMenuItem(MenuItemharu item) => ListTile(
        selectedColor: Color.fromARGB(255, 1, 155, 6),
        selected: currentItem == item,
        minLeadingWidth: 25,
        iconColor: Colors.black,
        textColor: Colors.black,
        selectedTileColor: Color.fromARGB(255, 194, 182, 182),
        leading: Icon(item.icon),
        title: Text(item.title),
        onTap: () {},
      );
}

class MenuItemharu {
  final String title;
  final IconData icon;

  const MenuItemharu(this.title, this.icon);
}
