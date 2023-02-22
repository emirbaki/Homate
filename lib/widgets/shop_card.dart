import 'package:flutter/material.dart';
import 'package:homate/main.dart';

class ShopCard extends StatefulWidget {
  const ShopCard(
      {Key? key,
      required this.press,
      required this.shopID,
      required this.name,
      required this.shopDesc})
      : super(key: key);

  final int shopID;
  final String name;
  final String shopDesc;

  final VoidCallback press;

  @override
  State<ShopCard> createState() => _ShopCardState();
}

class _ShopCardState extends State<ShopCard> {
  final link =
      'https://www.pngmart.com/files/7/Japanese-Food-PNG-Transparent-Image.png';

  final boxShadow2 = const BoxShadow(
      offset: Offset(0, 15), blurRadius: 27, color: Colors.black26);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: InkWell(
        onTap: widget.press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [boxShadow2],
                  color: MyApp.of(context).getTheme() == ThemeMode.dark
                      ? const Color.fromARGB(255, 107, 107, 107)
                      : Colors.white),
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
                  height: 170,
                  width: MediaQuery.of(context).size.width - 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 20, right: 20),
                        child: Text(
                          widget.name,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          widget.shopDesc,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Text(
                          '20-30dk - Min. 35 TL',
                          style: Theme.of(context).textTheme.labelMedium,
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
