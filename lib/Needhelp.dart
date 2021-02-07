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
      cards(context, "Kaynak Kitap", "Çanakkale",
          "https://i.ytimg.com/vi/juW_fNRkHf8/maxresdefault.jpg"),
      cards(context, "Sıra", "Malatya",
          "https://i.pinimg.com/originals/1a/fa/19/1afa19480f28ff60e4c82487d4f9c8a2.jpg"),
      cards(context, "Temizlik Malzemesi", "Ağrı",
          "https://www.7kkurumsaltemizlik.com/wp-content/uploads/atasehir-kurumsal-toptan-temizlik-malzemeleri-tedarikcisi.jpg"),
      cards(context, "Çanta", "Şanlıurfa",
          "https://n11scdn.akamaized.net/a1/450/ev-yasam/okul-cantalari/4-gozlu-ortopedik-sirt-cantasi-okul-cantasi-1sinif-yuksek-k__1269296912262608.jpg"),
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
