import 'dart:convert';

import 'package:almulkapp/Models/QuranTransModel.dart';
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
  QuranTransModel? quranTransModel;

  @override
  void initState() {
    super.initState();
    getQuranTranslation();
    getQuranData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.datax.englishName.toString()),
        ),
        body: quranSingleSurhModel == null || quranSingleSurhModel!.data!.ayahs!.isEmpty
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
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              '${quranSingleSurhModel!.data!.ayahs![index].text.toString().trim()} - (${quranSingleSurhModel!.data!.ayahs![index].numberInSurah.toString()})',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              textDirection: TextDirection.rtl,
                            ),
                            Text(
                                quranTransModel == null
                                ? ''
                                    :quranTransModel!.data!.surahs![widget.datax.number!.toInt() - 1].ayahs![index].text.toString()),
                          ],
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
  Future<void> getQuranData() async {
    var response = await http.get(Uri.parse('http://api.alquran.cloud/v1/surah/${widget.datax.number}'));

    var dataz = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      setState(() {
        quranSingleSurhModel = QuranSingleSurhModel.fromJson(dataz);
      });
    }
  }

  Future<void> getQuranTranslation() async {
    var response = await http.get(Uri.parse('http://api.alquran.cloud/v1/quran/en.asad'));

    var dataa = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      setState(() {
        quranTransModel = QuranTransModel.fromJson(dataa);
      });
    }
  }
}
