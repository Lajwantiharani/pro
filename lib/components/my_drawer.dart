import 'package:flutter/material.dart';
import 'package:pro/components/my_drawer_tile.dart';
import 'package:pro/pages/settings_page.dart';



class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyDrawerTile(
            text: 'H O M E',
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          MyDrawerTile(
              text: 'S E T T I N G',
              icon: Icons.settings,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingPage(),
                  ),
                );
              }),
          const Spacer(),
          MyDrawerTile(
            text: 'L O G O U T',
            icon: Icons.logout,
            onTap: () {},
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}