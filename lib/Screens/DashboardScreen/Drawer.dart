import 'package:flutter/material.dart';

import '../DashboardPages/QuranPage/SurahScreen.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  var _width ;

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.height * .90;
    return  Drawer(
      width: 260,
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
                height: _width * .020,
                color: Colors.green[50],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 160,
                      width:210,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/SplashScreen.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          SizedBox(height: 5.0,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              elevation: 3,
              child: ListTile(
                leading: Icon(size: 30, color: Colors.green[900], Icons.book_outlined),
                title: Text(
                  'Quran',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => SurahPage()));
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              elevation: 3,
              child: ListTile(
                leading: Icon(size: 30, color: Colors.green[900], Icons.man),
                title: Text(
                  'Numaz',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (BuildContext context) => CategoryScreen()));
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              elevation: 3,
              child: ListTile(
                leading: Icon(size: 30, color:Colors.green[900], Icons.watch_later_sharp),
                title: Text(
                  'Qibla',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (BuildContext context) => SearchScreen()));
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              elevation: 3,
              child: ListTile(
                leading: Icon(size: 30, color:Colors.green[900], Icons.watch),
                title: Text(
                  'Tasbih',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (BuildContext context) => RateUpdateScreen()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
