import 'package:donut_app/tab/donut_tab.dart';
import 'package:donut_app/tab/pancake_tab.dart';
import 'package:donut_app/tab/pizza_tab.dart';
import 'package:flutter/material.dart';
import 'package:donut_app/util/my_tab.dart';

import '../tab/burger_tab.dart';
import '../tab/smoothie_tab.dart';


class HomePage extends StatefulWidget
{
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //List of Tabs
  List<Widget> myTabs = [
    //donut tab
    MyTab(
      iconPath: 'lib/icons/donut_icon.png',
    ),

    //pancake tab
    MyTab(
      iconPath: 'lib/icons/pancake_icon.png',
    ),

    //pizza tab
    MyTab(
      iconPath: 'lib/icons/pizza_icon.png',
    ),

    //burger tab
    MyTab(
      iconPath: 'lib/icons/burger_icon.png',
    ),

    //smoothie tab
    MyTab(
      iconPath: 'lib/icons/smoothie_icon.png',
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'DOOONUT',
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
      
          leading: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 25,
              ),
            ),
          ),
      
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 25,
                ),
              ),
            )
          ],
      
        ),
        body: Column(
          children: [
            SizedBox(height: 20,),

            //i want to eat
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0),
              child: Row(
                children: [
                  Text(
                    "I want to",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[800],
                    ),
                  ),
      
                  Text(
                    " EAT",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold,
                    ),
      
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),

            // tab bar
            TabBar(
              tabs: myTabs,
            ),
      
            // tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  //donut page
                  DonutTab(),

                  //pancake page
                  PancakeTab(),

                  //pizza page
                  PizzaTab(),

                  //burger page
                  BurgerTab(),

                  //smoothie page
                  SmoothieTab(),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}