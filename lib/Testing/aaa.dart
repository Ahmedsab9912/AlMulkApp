import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class QuranSingleSurhModel {
  Data? data;

  QuranSingleSurhModel({this.data});

  factory QuranSingleSurhModel.fromJson(Map<String, dynamic> json) {
    return QuranSingleSurhModel(data: Data.fromJson(json['data']));
  }
}

class Data {
  List<Ayah>? ayahs;

  Data({this.ayahs});

  factory Data.fromJson(Map<String, dynamic> json) {
    var list = json['ayahs'] as List;
    List<Ayah> ayahsList = list.map((i) => Ayah.fromJson(i)).toList();

    return Data(ayahs: ayahsList);
  }
}

class Ayah {
  String? text;

  Ayah({this.text});

  factory Ayah.fromJson(Map<String, dynamic> json) {
    return Ayah(text: json['text']);
  }
}

class QuranPage extends StatefulWidget {
  const QuranPage({Key? key}) : super(key: key);

  @override
  State<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> {
  Future<QuranSingleSurhModel?>? quranDataFuture;

  @override
  void initState() {
    quranDataFuture = getQuranData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quran Page"),
      ),
      body: FutureBuilder<QuranSingleSurhModel?>(
        future: quranDataFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Error fetching data"),
            );
          } else {
            final quranListModel = snapshot.data;
            return SingleChildScrollView(
              child: Column(
                children: [
                  if (quranListModel != null)
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: quranListModel.data?.ayahs?.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          child: Card(
                            elevation: 3,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                quranListModel.data!.ayahs![index].text ?? '',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Future<QuranSingleSurhModel?> getQuranData() async {
    try {
      var response = await http.get(Uri.parse('http://api.alquran.cloud/v1/surah/1'));

      if (response.statusCode == 200) {
        var dataz = jsonDecode(response.body.toString());
        return QuranSingleSurhModel.fromJson(dataz);
      } else {
        throw Exception('Failed to load Quran data');
      }
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}
