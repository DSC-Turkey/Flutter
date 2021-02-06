import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:give_hand_main/cards.dart';

class NeedHelp extends StatefulWidget {
  @override
  _NeedHelpState createState() => _NeedHelpState();
}

class _NeedHelpState extends State<NeedHelp> {
  List<Widget> listofnh;
  @override
  void initState() {
    super.initState();
    listofnh = [
      cards(context, "Kalem", "Gaziantep",
          "https://cdn.pixabay.com/photo/2016/10/15/22/55/pen-1743869_960_720.jpg"),
      cards(context, "Kalem", "Gaziantep",
          "https://cdn.pixabay.com/photo/2016/10/15/22/55/pen-1743869_960_720.jpg"),
      cards(context, "Kalem", "Gaziantep",
          "https://cdn.pixabay.com/photo/2016/10/15/22/55/pen-1743869_960_720.jpg"),
      cards(context, "Kalem", "Gaziantep",
          "https://cdn.pixabay.com/photo/2016/10/15/22/55/pen-1743869_960_720.jpg"),
      cards(context, "Kalem", "Gaziantep",
          "https://cdn.pixabay.com/photo/2016/10/15/22/55/pen-1743869_960_720.jpg"),
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
      children: listofnh,
    );
  }
}
