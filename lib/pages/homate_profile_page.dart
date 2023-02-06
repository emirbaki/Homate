import 'package:flutter/material.dart';
import 'package:homate/widgets/bottom_bar_widget.dart';

class HomateProfilePage extends StatefulWidget {
  const HomateProfilePage({Key? key}) : super(key: key);

  @override
  _HomateProfilePageState createState() => _HomateProfilePageState();
}

class _HomateProfilePageState extends State<HomateProfilePage> {
  int currentIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomBarWidget(currentIndex: currentIndex),
    );
  }
}
