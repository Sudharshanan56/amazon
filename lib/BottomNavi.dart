import 'package:amazon/HomePage.dart';
import 'package:amazon/ProductPage.dart';
import 'package:flutter/material.dart';
class Navi extends StatefulWidget {
  const Navi({super.key});

  @override
  State<Navi> createState() => _NaviState();
}

class _NaviState extends State<Navi> {
  List pages=[
    Amazonhomepage(),
    Productpage(),
  ];
  int cindex=0;
  void tap(index)
  {
    setState(() {
      cindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[cindex],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Homepage"),
        BottomNavigationBarItem(icon: Icon(Icons.production_quantity_limits),label: "Products"),

      ],
      currentIndex: cindex,
      onTap: tap,
      ),
    );
  }
}
