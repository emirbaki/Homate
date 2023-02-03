import 'package:flutter/material.dart';
import 'package:homate/core/facebook_logger.dart';
import 'package:homate/core/google_logger.dart';
import 'package:homate/widgets/bottom_bar_widget.dart';

import '../widgets/extended_elevated_button.dart';
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
                  child: ExtendedElevatedButton(
                    width: width,
                    height: height,
                    label: 'Login with Google',
                    iconData: Icons.g_mobiledata,
                    ilogger: GoogleLogger(),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExtendedElevatedButton(
                    width: width,
                    height: height,
                    label: 'Login with Facebook',
                    iconData: Icons.facebook,
                    ilogger: FacebookLogger(),
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: ExtendedElevatedButton(
              width: width,
              height: height,
              label: 'Login',
              iconData: Icons.login),
        ),
        Expanded(
          flex: 1,
          child: Container(),
        )
      ],
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
