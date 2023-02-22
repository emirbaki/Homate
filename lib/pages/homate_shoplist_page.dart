import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:homate/data/shops.dart';
import 'package:homate/models/shop_model.dart';
import 'package:homate/pages/homate_shop_page.dart';
import 'package:homate/widgets/general_appbar.dart';
import 'package:homate/widgets/shop_card.dart';

import '../widgets/bottom_bar_widget.dart';
import '../widgets/category_list.dart';
import '../widgets/homate_drawer.dart';
import '../widgets/homate_shop_fabutton.dart';
import '../widgets/search_box.dart';

class HomateShopListPage extends StatefulWidget {
  const HomateShopListPage({Key? key}) : super(key: key);

  @override
  State<HomateShopListPage> createState() => _HomateShopListPageState();
}

class _HomateShopListPageState extends State<HomateShopListPage> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 5;
    var shopList = shops;
    return Scaffold(
        drawer: const HomateDrawer(),
        appBar: const GeneralAppBar(title: 'Shops'),
        bottomNavigationBar: BottomBarWidget(currentIndex: currentIndex),
        floatingActionButton: const HomateShopFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SafeArea(
          child: Column(children: [
            const SearchBox(),
            const CategoryList(),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 70),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                  ),
                  ListView.builder(
                    padding: const EdgeInsets.only(left: 10),
                    itemCount: shopList.length,
                    itemBuilder: (context, index) {
                      return ShopCard(
                        shopID: shopList[index].shopID,
                        name: shopList[index].name,
                        shopDesc: shopList[index].shopDesc,
                        press: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    HomateShopPage(shop: shopList[index]),
                              ));
                        },
                      );
                    },
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
