import 'package:flutter/material.dart';
import 'package:homate/pages/pages_list.dart';
import 'package:homate/utilities/color_utilities.dart';

import '../widgets/bottom_bar_widget.dart';
import '../widgets/category_list.dart';
import '../widgets/homate_shop_fabutton.dart';
import '../widgets/search_box.dart';

class HomateShopPage extends StatefulWidget {
  const HomateShopPage({Key? key}) : super(key: key);

  @override
  State<HomateShopPage> createState() => _HomateShopPageState();
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
                    itemCount: 5,
                    itemBuilder: (context, index) => ShopCard(press: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => pages[4],
                          ));
                    }),
                  )
                ],
              ),
            )
          ]),
        ));
  }
}

class ShopCard extends StatelessWidget {
  const ShopCard({Key? key, required this.press}) : super(key: key);

  final link =
      'https://www.pngmart.com/files/7/Japanese-Food-PNG-Transparent-Image.png';
  final boxShadow2 = const BoxShadow(
      offset: Offset(0, 15), blurRadius: 27, color: Colors.black26);

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 136,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.amber.shade700,
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
                    child: Image.network(
                      link,
                      fit: BoxFit.fitWidth,
                    ))),
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
                          "Suşi",
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Yemek Örneği harika lan bu yemek",
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20 * 1.5, vertical: 20 / 4),
                        decoration: BoxDecoration(
                            color:
                                HomateColorHelper.homateOrange.withOpacity(1),
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(22),
                                topRight: Radius.circular(22))),
                        child: Text(
                          '\$24',
                          style: TextStyle(color: Colors.yellow.shade100),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
