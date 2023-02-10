import 'package:flutter/material.dart';
import 'package:homate/data/users.dart';

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
          SizedBox(
            height: 240,
            child: DrawerHeader(
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.only(topRight: Radius.circular(20)),
                color: HomateColorHelper.homateOrange.withOpacity(1),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: const Text(
                      'Menu',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 72,
                    width: 72,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset('assets/emirfotoavatar.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('${users[0].name} ${users[0].surname}',
                        textScaleFactor: 2,
                        style: const TextStyle(
                          color: Colors.white,
                        )),
                  ),
                  Text(
                    users[0].email,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('My Profile'),
          ),
          const ListTile(
            leading: Icon(Icons.wallet),
            title: Text('My Wallet'),
          ),
          const AboutListTile(
            icon: Icon(Icons.info),
            applicationVersion: 'alpha 1.0',
            child: Text('About App'),
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
