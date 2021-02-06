import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Addpage extends StatefulWidget {
  @override
  _AddpageState createState() => _AddpageState();
}

class _AddpageState extends State<Addpage> {
  String name;
  List<bool> isSelected = [false, false];

  @override
  Widget build(BuildContext context) {
    var icon1 = Icon(Icons.hail);
    var icon2 = Icon(Icons.group);
    return Column(children: <Widget>[
      (TextFormField(
        keyboardType: TextInputType.text,
        initialValue: "Yardım Başlığı",
        textAlign: TextAlign.center,
        autofocus: true,
      )),
      TextFormField(
        keyboardType: TextInputType.text,
        initialValue: "Yer",
        textAlign: TextAlign.center,
        autofocus: true,
      ),
      TextFormField(
        keyboardType: TextInputType.text,
        initialValue: "Açıklama",
        textAlign: TextAlign.center,
        autofocus: true,
      ),
      TextFormField(
        keyboardType: TextInputType.text,
        initialValue: "Fotoğraf Yolu",
        textAlign: TextAlign.center,
        autofocus: true,
      ),
      ToggleButtons(
        children: <Widget>[
          icon1,
          icon2,
        ],
        onPressed: (int index) {
          setState(() {
            isSelected[index] = !isSelected[index];
          });
        },
        isSelected: isSelected,
      ),
      ElevatedButton(onPressed: null, child: Text("Kaydet"))
    ]);
  }
}
