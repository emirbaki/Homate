import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:homate/data/shops.dart';
import 'package:homate/models/product_model.dart';
import 'package:homate/widgets/bottom_bar_widget.dart';
import 'package:homate/widgets/homate_drawer.dart';
import 'package:homate/widgets/homate_shop_fabutton.dart';

import '../models/shop_model.dart';
import '../utilities/color_utilities.dart';
import '../widgets/food_card.dart';
import '../widgets/general_appbar.dart';

class HomateShopPage extends StatefulWidget {
  const HomateShopPage({Key? key, this.shop}) : super(key: key);
  final Shop? shop;

  @override
  State<HomateShopPage> createState() => _HomateShopPageState();
}

class _HomateShopPageState extends State<HomateShopPage> {
  final dragController = DraggableScrollableController();
  @override
  void initState() {
    dragController.addListener(sizeAyarla);
    super.initState();
  }

  @override
  void dispose() {
    dragController.removeListener(sizeAyarla);
    super.dispose();
  }

  double draggableScrollableSheetSize = 0;

  void sizeAyarla() {
    setState(() {
      draggableScrollableSheetSize = dragController.size;
      log(draggableScrollableSheetSize.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    final foodList = widget.shop!.foods;
    return Scaffold(
      drawer: const HomateDrawer(),
      appBar: GeneralAppBar(title: widget.shop?.name ?? 'İsim bulunamadi'),
      bottomNavigationBar: const BottomBarWidget(currentIndex: 5),
      floatingActionButton: const HomateShopFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Opacity(
            opacity: (1 - draggableScrollableSheetSize),
            child: Container(
              width: MediaQuery.of(context).size.width *
                  (1 - draggableScrollableSheetSize),
              height: 300 * (1 - draggableScrollableSheetSize),
              child: Stack(children: [
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent),
                ),
                PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) => const ShopPhoto())
              ]),
            ),
          ),
          // const Spacer(flex: 1),
          // const Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: Center(child: Text('Yemek Listesi')),
          // ),
          Expanded(
            child: DraggableScrollableSheet(
              controller: dragController,
              expand: true,
              maxChildSize: 1,
              initialChildSize: 0.1,
              minChildSize: 0.1,
              builder: (context, scrollController) => Container(
                child: ListView.builder(
                  controller: scrollController,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: foodList.length,
                  itemBuilder: (context, index) {
                    for (Product food in foodList) {
                      return FoodCard(
                        food: foodList[index],
                        index: index,
                        press: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    HomateShopPage(shop: shops[0]),
                              ));
                        },
                      );
                    }
                    return null;
                  },
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

class ShopPhoto extends StatelessWidget {
  const ShopPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      height: 320,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40), color: Colors.grey),
    );
  }
}
