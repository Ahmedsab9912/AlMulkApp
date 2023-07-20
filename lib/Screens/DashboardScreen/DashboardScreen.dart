import 'package:flutter/material.dart';

import '../DashboardPages/QuranPage/SurahScreen.dart';
import 'Drawer.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  var _width;
  var _hight;

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width * .95;
    _hight = MediaQuery.of(context).size.height * .95;
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
        drawer:  MyDrawer(),
       body:  SingleChildScrollView(
         child: Column(
           children: [
             Padding(
               padding:  EdgeInsets.only(left: 30,right: 30,top: 10),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   InkWell(onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context){
                       return  SurahPage();
                     }));
                   },
                     child: Card(
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                       elevation: 10,
                       child: Padding(
                         padding: EdgeInsets.only(bottom: 15,top: 15),
                         child: Container(
                           height: _hight * .17,
                           width: _width * .37,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children:  [
                               Image(width: 90,
                                   height: 60,
                                   image: AssetImage('images/quran.png')),
                               SizedBox(height: 15,),
                               Text('Quran',style: TextStyle(fontSize: _hight * .026,color: Colors.green[600]),),
                             ],
                           ),
                         ),
                       ),
                     ),
                   ),
                   InkWell(onTap: () {
                     // Navigator.push(context, MaterialPageRoute(builder: (context){
                     //   return  CategoryScreen();
                     // }));
                   },
                     child: Card(
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                       elevation: 10,
                       child: Padding(
                         padding: EdgeInsets.only(bottom: 15,top: 15),
                         child: Container(
                           height: _hight * .17,
                           width: _width * .37,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children:  [
                               Image(width: 90,
                                   height: 60,
                                   image: AssetImage('images/sujud.png')),
                               SizedBox(height: 15,),
                               Text('Numaz',style: TextStyle(fontSize: _hight * .026,color: Colors.green[600]),),
                             ],
                           ),
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
             Padding(
               padding:  EdgeInsets.only(left: 30,right: 30,top: 10),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   InkWell(onTap: () {
                     // Navigator.push(context, MaterialPageRoute(builder: (context){
                     //   return  SearchScreen();
                     // }));
                   },
                     child: Card(
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                       elevation: 10,
                       child: Padding(
                         padding: EdgeInsets.only(bottom: 15,top: 15),
                         child: Container(
                           height: _hight * .17,
                           width: _width * .37,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children:  [
                               Image(width: 90,
                                   height: 60,
                                   image: AssetImage('images/qibla.png')),
                               SizedBox(height: 15,),
                               Text('Qibla',style: TextStyle(fontSize: _hight * .026,color: Colors.green[600]),),
                             ],
                           ),
                         ),
                       ),
                     ),
                   ),
                   InkWell(onTap: () {
                     // Navigator.push(context, MaterialPageRoute(builder: (context){
                     //   return  RateUpdateScreen();
                     // }));
                   },
                     child: Card(
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                       elevation: 10,
                       child: Padding(
                         padding: EdgeInsets.only(bottom: 15,top: 15),
                         child: Container(
                           height: _hight * .17,
                           width: _width * .37,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children:  [
                               Image(width: 90,
                                   height: 60,
                                   image: AssetImage('images/tasbih.png')),
                               SizedBox(height: 15,),
                               Text('Tasbih',style: TextStyle(fontSize: _hight * .026,color: Colors.green[600],),),
                             ],
                           ),
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
           ],
         ),
       )
    );
  }
}
