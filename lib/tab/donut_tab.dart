import 'package:flutter/material.dart';

import '../util/donut_tile.dart';

class DonutTab extends StatelessWidget {

  // List of donuts
  List donutsAvailable = [
    // flavor, price, color, image
    ["Ice Cream", "36", Colors.lightBlue, "lib/images/ice_cream_donut.png"],
    ["Chocolate", "30", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Strawberry", "32", Colors.pink, "lib/images/strawberry_donut.png"],
    ["Grape", "35", Colors.purple, "lib/images/grape_donut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsAvailable.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/ 1.5,
      ),
      itemBuilder: (context, index){
        return DonutTile(
          donutFlavor: donutsAvailable[index][0],
          donutPrice: donutsAvailable[index][1],
          donutColor: donutsAvailable[index][2],
          imageName: donutsAvailable[index][3],
        );
      }
    );
  }
}
