import 'package:flutter/material.dart';
import 'package:homate/widgets/bottom_bar_widget.dart';

import '../widgets/homate_shop_fabutton.dart';
import '../widgets/login_form.dart';
import '../widgets/homate_logo_widget.dart';
import '../widgets/signup_form.dart';

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
        floatingActionButton: const HomateShopFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const BottomBarWidget(currentIndex: 0),
        backgroundColor: const Color.fromARGB(255, 239, 239, 239),
        body: TabBarView(children: [
          LoginFormWidget(width: width, height: height),
          SignupFormWidget(width: width, height: height)
        ]),
      ),
    );
  }
}
