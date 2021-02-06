import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:give_hand_main/cards.dart';

class Helpme extends StatefulWidget {
  @override
  _HelpmeState createState() => _HelpmeState();
}

class _HelpmeState extends State<Helpme> {
  List<Widget> listofhm;
  @override
  void initState() {
    super.initState();
    listofhm = [
      cards(context, "Boya", "Van",
          "https://cdn.pixabay.com/photo/2013/07/07/01/21/blue-143734__340.jpg",
          type: true),
      cards(context, "Boya", "Van",
          "https://cdn.pixabay.com/photo/2013/07/07/01/21/blue-143734__340.jpg",
          type: true),
      cards(context, "Boya", "Van",
          "https://cdn.pixabay.com/photo/2013/07/07/01/21/blue-143734__340.jpg",
          type: true),
      cards(context, "Boya", "Van",
          "https://cdn.pixabay.com/photo/2013/07/07/01/21/blue-143734__340.jpg",
          type: true),
      cards(context, "Boya", "Van",
          "https://cdn.pixabay.com/photo/2013/07/07/01/21/blue-143734__340.jpg",
          type: true),
      cards(context, "Boya", "Van",
          "https://cdn.pixabay.com/photo/2013/07/07/01/21/blue-143734__340.jpg",
          type: true),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12.0,
      crossAxisSpacing: 12.0,
      padding: EdgeInsets.all(10.0),
      childAspectRatio: 1,
      children: listofhm,
    );
  }
}
