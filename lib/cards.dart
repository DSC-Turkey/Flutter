import 'package:flutter/material.dart';
import 'package:give_hand_main/ItemsDetail.dart';

Widget cards(BuildContext context, String name, String location, String photo,
    {bool type = false}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => UrunDetay(
                    name: name,
                    location: location,
                    photo: photo,
                    type: type,
                  )));
    },
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 4.0,
              spreadRadius: 2.0,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 120.0,
            height: 80.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(photo),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20.0)),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(name,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              )),
          SizedBox(
            height: 8.0,
          ),
          Text(location,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.red[400],
              )),
        ],
      ),
    ),
  );
}
