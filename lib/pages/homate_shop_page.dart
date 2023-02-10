import 'package:flutter/material.dart';
import 'package:homate/data/shops.dart';
import 'package:homate/models/product_model.dart';
import 'package:homate/widgets/bottom_bar_widget.dart';
import 'package:homate/widgets/homate_drawer.dart';
import 'package:homate/widgets/homate_shop_fabutton.dart';

import '../models/shop_model.dart';
import '../utilities/color_utilities.dart';
import '../widgets/general_appbar.dart';

class HomateShopPage extends StatefulWidget {
  const HomateShopPage({Key? key, this.shop}) : super(key: key);
  final Shop? shop;

  @override
  State<HomateShopPage> createState() => _HomateShopPageState();
}

class _HomateShopPageState extends State<HomateShopPage> {
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
        children: [
          // Expanded(
          //   flex: 6,
          //   child: Stack(children: [
          //     Container(
          //       margin: const EdgeInsets.only(top: 40),
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(20),
          //           color: Colors.black),
          //     ),
          //     PageView.builder(
          //         scrollDirection: Axis.horizontal,
          //         itemCount: 5,
          //         itemBuilder: (context, index) => const ShopPhoto())
          //   ]),
          // ),
          // const Spacer(flex: 1),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(child: Text('Yemek Listesi')),
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: ListView.builder(
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
          )
        ],
      )),
    );
  }
}

class FoodCard extends StatefulWidget {
  FoodCard({
    super.key,
    required this.food,
    required this.press,
    required this.index,
    this.isFavorite = false,
  });

  late bool isFavorite;
  final int index;
  final Product food;
  final VoidCallback press;

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  final boxShadow2 = const BoxShadow(
      offset: Offset(0, 15), blurRadius: 27, color: Colors.black26);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: widget.press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 136,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: widget.index.isEven
                      ? Colors.amber
                      : HomateColorHelper.homateOrange.withOpacity(1),
                  boxShadow: [boxShadow2]),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22), color: Colors.white),
            ),
            Positioned(
                top: 0,
                right: 0,
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 160,
                    width: 200,
                    child: widget.food.foodImages[0])),
            Positioned(
                left: 0,
                bottom: 0,
                child: SizedBox(
                  height: 136,
                  width: MediaQuery.of(context).size.width - 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 20, right: 20),
                        child: Text(
                          widget.food.name,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          widget.food.description,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20 * 1.5, vertical: 20 / 4),
                        decoration: BoxDecoration(
                            color: widget.index.isEven
                                ? HomateColorHelper.homateOrange.withOpacity(1)
                                : Colors.amber,
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(22),
                                topRight: Radius.circular(22))),
                        child: Text(
                          '\$${widget.food.price}',
                          style: TextStyle(color: Colors.yellow.shade100),
                        ),
                      )
                    ],
                  ),
                )),
            Positioned(
              bottom: 2.5,
              left: 100,
              child: InkWell(
                  onTap: setFavorite,
                  child: Icon(
                      widget.isFavorite
                          ? Icons.star
                          : Icons.star_border_outlined,
                      color: widget.isFavorite
                          ? Colors.amber.shade200
                          : Colors.grey.shade200)),
            )
          ],
        ),
      ),
    );
  }

  void setFavorite() {
    setState(() {
      widget.isFavorite = !widget.isFavorite;
    });
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
