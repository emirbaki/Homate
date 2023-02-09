import 'package:flutter/material.dart';

import '../utilities/color_utilities.dart';

class HomateDrawer extends StatelessWidget {
  const HomateDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20), topRight: Radius.circular(20))),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.only(topRight: Radius.circular(20)),
              color: HomateColorHelper.homateOrange.withOpacity(1),
            ),
            child: const Text('Menu'),
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('My Profile'),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          const ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log Out'),
            textColor: Colors.red,
            iconColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
