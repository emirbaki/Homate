import 'package:flutter/material.dart';
import 'package:homate/widgets/bottom_bar_widget.dart';

class HomateFavoritesPage extends StatefulWidget {
  const HomateFavoritesPage({Key? key}) : super(key: key);

  @override
  _HomateFavoritesPageState createState() => _HomateFavoritesPageState();
}

class _HomateFavoritesPageState extends State<HomateFavoritesPage> {
  int currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomBarWidget(currentIndex: currentIndex),
    );
  }
}
