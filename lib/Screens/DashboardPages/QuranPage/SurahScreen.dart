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
        body: Column(
          children: [
            // Padding(
            //   padding: EdgeInsets.all(8.0),
            //   child: TextFormField(
            //     // Add your desired properties for the TextFormField
            //     decoration: InputDecoration(
            //       labelText: 'Search Surah',
            //       border: OutlineInputBorder(),
            //     ),
            //   ),
            // ),
            Expanded(
              child: surahModel == null
                  ? Center(
                child: CircularProgressIndicator(),
              )
                  : ListView.builder(
                shrinkWrap: true,
                itemCount: surahModel!.data!.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return AllSurahPage(
                              datax: surahModel!.data![index],
                            );
                          }));
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Card(
                        margin: EdgeInsets.only(top: 3),
                        elevation: 3,
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                surahModel!.data![index]
                                    .englishName
                                    .toString(),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green[900],
                                ),
                                textDirection: TextDirection.rtl,
                              ),
                              Center(
                                child: Image.asset(
                                  'images/Line.png',
                                  height: 38,
                                  width: 55,
                                ),
                              ),
                              Text(
                                surahModel!.data![index]
                                    .name
                                    .toString(),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                textDirection: TextDirection.rtl,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
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
