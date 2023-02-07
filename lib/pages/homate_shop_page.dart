import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homate/utilities/color_utilities.dart';

import '../widgets/bottom_bar_widget.dart';
import '../widgets/homate_shop_fabutton.dart';
import '../widgets/search_box.dart';

class HomateShopPage extends StatefulWidget {
  const HomateShopPage({Key? key}) : super(key: key);

  @override
  _HomateShopPageState createState() => _HomateShopPageState();
}

class _HomateShopPageState extends State<HomateShopPage> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 5;
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text('Shops'))),
        bottomNavigationBar: BottomBarWidget(currentIndex: currentIndex),
        floatingActionButton: const HomateShopFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SafeArea(
          child: Column(children: const [SearchBox(), CategoryList()]),
        ));
  }
}

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  CategoryListState createState() => CategoryListState();
}

class CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  List categories = ['Sulu Yemek', 'Hamur işi', 'İçecek', 'Ev Yemeği'];
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: ((context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                    left: 20,
                    right: index == categories.length - 1 ? 20 : 0,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: index == selectedIndex
                          ? HomateColorHelper.homateOrange.withOpacity(0.4)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(6)),
                  child: Text(categories[index]),
                ),
              )),
        ));
  }
}
