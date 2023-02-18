import 'dart:developer';

import 'package:flutter/material.dart';

import '../core/general_controller_app.dart';
import '../data/favorites.dart';
import '../models/product_model.dart';
import '../utilities/color_utilities.dart';

class FoodCard extends StatefulWidget {
  FoodCard({
    super.key,
    required this.food,
    required this.press,
    required this.index,
    this.isFavorite = false,
  });

  bool isFavorite;
  final int index;
  final Product food;
  final VoidCallback press;

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  var favoriteListInstance = getIt<FavoritesHandler>();
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
      if (widget.isFavorite) {
        if (!favoriteListInstance.favorites.contains(widget.food)) {
          favoriteListInstance.addFavorites(widget.food);
        }
      } else {
        if (favoriteListInstance.favorites.contains(widget.food)) {
          favoriteListInstance.removeFromFavorites(widget.food);
          log(widget.index.toString());
        }
      }
    });
  }
}
