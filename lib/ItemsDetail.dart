import 'package:flutter/material.dart';

class UrunDetay extends StatelessWidget {
  final String name;
  final String location;
  final String photo;
  final bool type;

  const UrunDetay({Key key, this.name, this.location, this.photo, this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Hero(
              tag: photo,
              child: Image.network(
                photo,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.red[400],
                size: 40.0,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              location,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.red[400],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Text("This Area will include information about item",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  )),
            ),
            SizedBox(
              height: 25.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.red[400],
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Center(
                child: Text(
                  type ? "Take Hand" : "Give Hand",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
