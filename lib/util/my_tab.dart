import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {

  final String iconPath;

  const MyTab({
    super.key,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,
        ),
        child: Image.asset(
          iconPath,
          color: Colors.grey[800],
        ),
      ),
    );
  }
}

