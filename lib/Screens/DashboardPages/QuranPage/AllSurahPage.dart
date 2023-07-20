import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../Models/QuranSingleSurhModel.dart';
import '../../../Models/SurahModel.dart' as d;

class AllSurahPage extends StatefulWidget {
  d.Data datax;
  AllSurahPage({Key? key, required this.datax}) : super(key: key);

  @override
  State<AllSurahPage> createState() => _AllSurahPageState();
}

class _AllSurahPageState extends State<AllSurahPage> {
  QuranSingleSurhModel? quranSingleSurhModel;

  @override
  void initState() {
    super.initState();
    getQuranData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.datax.englishName.toString()),
        ),
        body: quranSingleSurhModel == null
            ? Center(
          child: CircularProgressIndicator(),
        )
            : ListView.builder(
          shrinkWrap: false,
          itemCount: quranSingleSurhModel!.data!.ayahs!.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Card(
                elevation: 3,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Text('${quranSingleSurhModel!.data!.ayahs![index].text.toString().trim()} - (${quranSingleSurhModel!.data!.ayahs![index].numberInSurah.toString()})',
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),textDirection: TextDirection.rtl,
                        ),
                      ),
                    ],
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
  Future<QuranSingleSurhModel?> getQuranData() async {
    var response =
    await http.get(Uri.parse('http://api.alquran.cloud/v1/surah/${widget.datax.number}'));

    var dataz = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      setState(() {
        quranSingleSurhModel = QuranSingleSurhModel.fromJson(dataz);
      });
    }

    return quranSingleSurhModel;
  }
}
