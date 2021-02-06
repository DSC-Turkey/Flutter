import 'package:flutter/material.dart';
import 'package:give_hand_main/Addpage.dart';
import 'package:give_hand_main/Helpme.dart';
import 'package:give_hand_main/Needhelp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Givehand',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: MainMenu());
  }
}

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int _activeIndex = 0;
  List<Widget> _pages;

  @override
  void initState() {
    super.initState();

    _pages = [NeedHelp(), Addpage(), Helpme()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red[200]),
        elevation: 20.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Container(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Give",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                "Hand",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[200]),
              )
            ],
          ),
        ),
      ),
      body: _pages[_activeIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Selçuk Mert"),
              accountEmail: Text("selm123@mailim.com"),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508_960_720.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red[400]),
            ),
            ListTile(
              title: Text("My hands"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Points"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Settigs"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Quit"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _activeIndex,
        selectedItemColor: Colors.red[400],
        unselectedItemColor: Colors.grey[600],
        items: [
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              icon: Icon(Icons.hail),
              title: Text("Need Help")),
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              icon: Icon(
                Icons.add_box,
                size: 50,
              ),
              title: Text("Add")),
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              icon: Icon(Icons.group),
              title: Text("Give Hand"))
        ],
        onTap: (int tiklananButonPozisyonNo) {
          setState(() {
            _activeIndex = tiklananButonPozisyonNo;
          });
        },
      ),
    );
  }
}
