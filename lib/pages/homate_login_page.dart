import 'package:flutter/material.dart';
import 'package:homate/utilities/color_utilities.dart';
import 'package:homate/widgets/bottom_bar_widget.dart';

import '../widgets/homate_logo_widget.dart';

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

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 150,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40)),
          ),
          title: const LogoWidget(),
          bottom: const TabBar(tabs: [
            Tab(text: 'Login'),
            Tab(text: 'Sign Up'),
          ]),
        ),
        bottomNavigationBar: const BottomBarWidget(currentIndex: 0),
        backgroundColor: const Color.fromARGB(255, 255, 249, 172),
        body: TabBarView(children: [loginPageContent(), loginPageContent()]),
      ),
    );
  }

  Column loginPageContent() {
    return Column(
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
          flex: 1,
          child: Container(),
        ),
        Expanded(
          flex: 2,
          child: loginField('Enter your Email', Icons.email_outlined),
        ),
        Expanded(
          flex: 2,
          child: loginField('Enter your Password', Icons.key),
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
    );
  }

  ElevatedButton loginButton(String label, IconData iconData) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          backgroundColor: HomateColorHelper.homateOrange),
      icon: Icon(iconData),
      label: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Text(label, textScaleFactor: width / height * 1.45),
      ),
      onPressed: () => print("Login gerçekleşti"),
    );
  }

  Padding loginField(String hintText, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(iconData),
          border: const OutlineInputBorder(),
          hintText: hintText,
        ),
      ),
    );
  }
}
