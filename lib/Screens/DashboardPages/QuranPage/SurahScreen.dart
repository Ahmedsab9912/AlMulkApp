import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../Models/SurahModel.dart';
import 'AllSurahPage.dart';

class SurahPage extends StatefulWidget {
  const SurahPage({Key? key}) : super(key: key);

  @override
  State<SurahPage> createState() => _SurahPageState();
}

class _SurahPageState extends State<SurahPage> {
  SurahModel? surahModel;

  @override
  void initState() {
    super.initState();
    getQuranData(); // Add the await keyword here, but initState cannot be async
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('All Surah'),
        ),
        body: surahModel == null
            ? Center(
                child: CircularProgressIndicator(),)
            : ListView.builder(
          //  shrinkWrap IS ALTERNATE WIDGET OF EXPANDED
                shrinkWrap: true,
                itemCount: surahModel!.data!.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return AllSurahPage(datax: surahModel!.data![index] ,);
                      }));
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Card(
                        elevation: 3,
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            surahModel!.data![index].name.toString(),
                            style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }

  //API CALLING
  Future<SurahModel?> getQuranData() async {
    var response =
        await http.get(Uri.parse('http://api.alquran.cloud/v1/surah'));
    var dataz = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      setState(() {
        surahModel = SurahModel.fromJson(dataz);
      });
    }

    return surahModel;
  }
}