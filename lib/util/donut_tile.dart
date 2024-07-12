import 'package:flutter/material.dart';
import 'package:hive/hive.dart';


class DonutTile extends StatelessWidget {

  final String donutFlavor;
  final String donutPrice;
  final donutColor;
  final String imageName;

  final double borderRadius = 12;

  const DonutTile({
    super.key,
    required this.donutFlavor,
    required this.donutPrice,
    required this.donutColor,
    required this.imageName,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor.shade50,
          borderRadius: BorderRadius.circular(12),
        ),

        // elements in the box: price, image, flavor, ...
        child: Column(
          children: [
            // price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                      color: donutColor.shade900,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: donutColor.shade100,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(borderRadius),
                        topRight: Radius.circular(borderRadius)
                    ),
                  ),
                  padding: EdgeInsets.only(
                      left: 12, right: 12,
                      top: 8, bottom: 8
                  ),
                ),
              ],
            ),

            // image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Image.asset(imageName),
            ),

            // text: flavor
            Text(
              donutFlavor,
              style: TextStyle(
                color: donutColor.shade900,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            // buttons
            Padding(
              padding: const EdgeInsets.only(left: 8, bottom: 8, top: 14, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.pink.shade300,
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.grey.shade600,
                  )
                ],
              ),
            ),
          ],

        ),



      ),
    );
  }
}
