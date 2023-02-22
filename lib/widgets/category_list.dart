import 'package:flutter/material.dart';

import '../utilities/color_utilities.dart';

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
                  child: Text(
                    categories[index],
                    style: index == selectedIndex
                        ? Theme.of(context).textTheme.labelMedium!.copyWith(
                            color:
                                HomateColorHelper.homateOrange.withOpacity(0.8))
                        : Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              )),
        ));
  }
}
