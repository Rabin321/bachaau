import 'package:flutter/material.dart';

class MenuItems {
  static const home = MenuItemharu('Home', Icons.home);
  static const help = MenuItemharu('Help', Icons.help);
  static const feedback = MenuItemharu('Feedback', Icons.feedback);
  static const invite = MenuItemharu('Invite friends', Icons.inventory);
  static const rate = MenuItemharu('Rate app', Icons.rate_review);
  static const aboutus = MenuItemharu('About us', Icons.info);
  static const settings = MenuItemharu('Settings', Icons.settings);

  static const all = <MenuItemharu>[
    home,
    help,
    feedback,
    invite,
    rate,
    aboutus,
    settings,
  ];
}

class MenuScreen extends StatelessWidget {
  final MenuItemharu currentItem;
  final ValueChanged<MenuItemharu> onSelectedItem;
  const MenuScreen(
      {super.key, required this.currentItem, required this.onSelectedItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 158, 149, 142),
      body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 19.0, top: 40, bottom: 50),
              child: CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage('assets/images/police1.jpg'),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: const [
                Text(
                  "Full name",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                Text(
                  "9876543210",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
        // const Spacer(),
        ...MenuItems.all.map(buildMenuItem).toList(),
        const Spacer(flex: 2),
        Row(
          children: [
            InkWell(
              onTap: (() => print("Logout clicked")),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 40),
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      // gradient: LinearGradient(
                      //   colors: [
                      //     Color.fromARGB(255, 78, 88, 133),
                      //     Color.fromARGB(255, 100, 101, 126)
                      //   ],
                      //   begin: Alignment.topLeft,
                      //   end: Alignment.bottomRight,
                      // ),
                      color: Colors.transparent,
                      border: Border.all(color: Colors.black, width: 1.3),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                        child: Text(
                      "Log out",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1),
                    )),
                  ),
                ),
              ),
            )
          ],
        )
      ])),
    );
  }

  Widget buildMenuItem(MenuItemharu item) => ListTile(
        selectedColor: Colors.white,
        selected: currentItem == item,
        minLeadingWidth: 25,

        iconColor: Colors.black,
        textColor: Colors.black,
        // selectedTileColor: Colors.blueGrey.shade100,
        leading: Icon(item.icon),
        title: Text(
          item.title,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
        onTap: () => onSelectedItem(item),
      );
}

class MenuItemharu {
  final String title;
  final IconData icon;

  const MenuItemharu(this.title, this.icon);
}
