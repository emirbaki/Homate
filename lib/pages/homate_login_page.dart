import 'package:flutter/material.dart';

class HomateLoginPage extends StatefulWidget {
  const HomateLoginPage({super.key, required String title});

  @override
  State<HomateLoginPage> createState() => _HomateLoginPageState();
}

class _HomateLoginPageState extends State<HomateLoginPage> {
  var orientation, size;
  late double height, width;
  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;
    size = MediaQuery.of(context).size;
    width = size.width;
    height = size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: const Text('HOMATE'),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              child: Image.network(
                  'https://seeklogo.com/images/T/trendyol-yemek-logo-A119EAD68E-seeklogo.com.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 2,
            child: loginField('Enter your Email'),
          ),
          Expanded(
            flex: 2,
            child: loginField('Enter your Password'),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: loginButton('Login with Google', Icons.g_mobiledata),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: loginButton('Login with Facebook', Icons.facebook),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: loginButton('Login', Icons.login),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          )
        ],
      ),
    );
  }

  ElevatedButton loginButton(String label, IconData iconData) {
    return ElevatedButton.icon(
      icon: Icon(iconData),
      label: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Text(label, textScaleFactor: width / height * 1.45),
      ),
      onPressed: () => print("Login gerçekleşti"),
    );
  }

  Padding loginField(String hintText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hintText,
        ),
      ),
    );
  }
}
