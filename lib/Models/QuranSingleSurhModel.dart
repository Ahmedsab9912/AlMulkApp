/// code : 200
/// status : "OK"
/// data : {"number":1,"name":"سُورَةُ ٱلْفَاتِحَةِ","englishName":"Al-Faatiha","englishNameTranslation":"The Opening","revelationType":"Meccan","numberOfAyahs":7,"ayahs":[{"number":1,"text":"بِسۡمِ ٱللَّهِ ٱلرَّحۡمَـٰنِ ٱلرَّحِیمِ\n","numberInSurah":1,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":2,"text":"ٱلۡحَمۡدُ لِلَّهِ رَبِّ ٱلۡعَـٰلَمِینَ\n","numberInSurah":2,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":3,"text":"ٱلرَّحۡمَـٰنِ ٱلرَّحِیمِ\n","numberInSurah":3,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":4,"text":"مَـٰلِكِ یَوۡمِ ٱلدِّینِ\n","numberInSurah":4,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":5,"text":"إِیَّاكَ نَعۡبُدُ وَإِیَّاكَ نَسۡتَعِینُ\n","numberInSurah":5,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":6,"text":"ٱهۡدِنَا ٱلصِّرَ ٰ⁠طَ ٱلۡمُسۡتَقِیمَ\n","numberInSurah":6,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":7,"text":"صِرَ ٰ⁠طَ ٱلَّذِینَ أَنۡعَمۡتَ عَلَیۡهِمۡ غَیۡرِ ٱلۡمَغۡضُوبِ عَلَیۡهِمۡ وَلَا ٱلضَّاۤلِّینَ\n","numberInSurah":7,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false}],"edition":{"identifier":"quran-uthmani-quran-academy","language":"ar","name":"القرآن الكريم برسم العثماني","englishName":"Modified Quran Uthmani Text from the Quran Academy to work with the Kitab font","format":"text","type":"quran","direction":"rtl"}}

class QuranSingleSurhModel {
  QuranSingleSurhModel({
      num? code,
      String? status,
      Data? data,}){
    _code = code;
    _status = status;
    _data = data;
}

  QuranSingleSurhModel.fromJson(dynamic json) {
    _code = json['code'];
    _status = json['status'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  num? _code;
  String? _status;
  Data? _data;
QuranSingleSurhModel copyWith({  num? code,
  String? status,
  Data? data,
}) => QuranSingleSurhModel(  code: code ?? _code,
  status: status ?? _status,
  data: data ?? _data,
);
  num? get code => _code;
  String? get status => _status;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['status'] = _status;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// number : 1
/// name : "سُورَةُ ٱلْفَاتِحَةِ"
/// englishName : "Al-Faatiha"
/// englishNameTranslation : "The Opening"
/// revelationType : "Meccan"
/// numberOfAyahs : 7
/// ayahs : [{"number":1,"text":"بِسۡمِ ٱللَّهِ ٱلرَّحۡمَـٰنِ ٱلرَّحِیمِ\n","numberInSurah":1,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":2,"text":"ٱلۡحَمۡدُ لِلَّهِ رَبِّ ٱلۡعَـٰلَمِینَ\n","numberInSurah":2,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":3,"text":"ٱلرَّحۡمَـٰنِ ٱلرَّحِیمِ\n","numberInSurah":3,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":4,"text":"مَـٰلِكِ یَوۡمِ ٱلدِّینِ\n","numberInSurah":4,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":5,"text":"إِیَّاكَ نَعۡبُدُ وَإِیَّاكَ نَسۡتَعِینُ\n","numberInSurah":5,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":6,"text":"ٱهۡدِنَا ٱلصِّرَ ٰ⁠طَ ٱلۡمُسۡتَقِیمَ\n","numberInSurah":6,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":7,"text":"صِرَ ٰ⁠طَ ٱلَّذِینَ أَنۡعَمۡتَ عَلَیۡهِمۡ غَیۡرِ ٱلۡمَغۡضُوبِ عَلَیۡهِمۡ وَلَا ٱلضَّاۤلِّینَ\n","numberInSurah":7,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false}]
/// edition : {"identifier":"quran-uthmani-quran-academy","language":"ar","name":"القرآن الكريم برسم العثماني","englishName":"Modified Quran Uthmani Text from the Quran Academy to work with the Kitab font","format":"text","type":"quran","direction":"rtl"}

class Data {
  Data({
      num? number,
      String? name,
      String? englishName,
      String? englishNameTranslation,
      String? revelationType,
      num? numberOfAyahs,
      List<Ayahs>? ayahs,
      Edition? edition,}){
    _number = number;
    _name = name;
    _englishName = englishName;
    _englishNameTranslation = englishNameTranslation;
    _revelationType = revelationType;
    _numberOfAyahs = numberOfAyahs;
    _ayahs = ayahs;
    _edition = edition;
}

  Data.fromJson(dynamic json) {
    _number = json['number'];
    _name = json['name'];
    _englishName = json['englishName'];
    _englishNameTranslation = json['englishNameTranslation'];
    _revelationType = json['revelationType'];
    _numberOfAyahs = json['numberOfAyahs'];
    if (json['ayahs'] != null) {
      _ayahs = [];
      json['ayahs'].forEach((v) {
        _ayahs?.add(Ayahs.fromJson(v));
      });
    }
    _edition = json['edition'] != null ? Edition.fromJson(json['edition']) : null;
  }
  num? _number;
  String? _name;
  String? _englishName;
  String? _englishNameTranslation;
  String? _revelationType;
  num? _numberOfAyahs;
  List<Ayahs>? _ayahs;
  Edition? _edition;
Data copyWith({  num? number,
  String? name,
  String? englishName,
  String? englishNameTranslation,
  String? revelationType,
  num? numberOfAyahs,
  List<Ayahs>? ayahs,
  Edition? edition,
}) => Data(  number: number ?? _number,
  name: name ?? _name,
  englishName: englishName ?? _englishName,
  englishNameTranslation: englishNameTranslation ?? _englishNameTranslation,
  revelationType: revelationType ?? _revelationType,
  numberOfAyahs: numberOfAyahs ?? _numberOfAyahs,
  ayahs: ayahs ?? _ayahs,
  edition: edition ?? _edition,
);
  num? get number => _number;
  String? get name => _name;
  String? get englishName => _englishName;
  String? get englishNameTranslation => _englishNameTranslation;
  String? get revelationType => _revelationType;
  num? get numberOfAyahs => _numberOfAyahs;
  List<Ayahs>? get ayahs => _ayahs;
  Edition? get edition => _edition;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['number'] = _number;
    map['name'] = _name;
    map['englishName'] = _englishName;
    map['englishNameTranslation'] = _englishNameTranslation;
    map['revelationType'] = _revelationType;
    map['numberOfAyahs'] = _numberOfAyahs;
    if (_ayahs != null) {
      map['ayahs'] = _ayahs?.map((v) => v.toJson()).toList();
    }
    if (_edition != null) {
      map['edition'] = _edition?.toJson();
    }
    return map;
  }

}

/// identifier : "quran-uthmani-quran-academy"
/// language : "ar"
/// name : "القرآن الكريم برسم العثماني"
/// englishName : "Modified Quran Uthmani Text from the Quran Academy to work with the Kitab font"
/// format : "text"
/// type : "quran"
/// direction : "rtl"

class Edition {
  Edition({
      String? identifier,
      String? language,
      String? name,
      String? englishName,
      String? format,
      String? type,
      String? direction,}){
    _identifier = identifier;
    _language = language;
    _name = name;
    _englishName = englishName;
    _format = format;
    _type = type;
    _direction = direction;
}

  Edition.fromJson(dynamic json) {
    _identifier = json['identifier'];
    _language = json['language'];
    _name = json['name'];
    _englishName = json['englishName'];
    _format = json['format'];
    _type = json['type'];
    _direction = json['direction'];
  }
  String? _identifier;
  String? _language;
  String? _name;
  String? _englishName;
  String? _format;
  String? _type;
  String? _direction;
Edition copyWith({  String? identifier,
  String? language,
  String? name,
  String? englishName,
  String? format,
  String? type,
  String? direction,
}) => Edition(  identifier: identifier ?? _identifier,
  language: language ?? _language,
  name: name ?? _name,
  englishName: englishName ?? _englishName,
  format: format ?? _format,
  type: type ?? _type,
  direction: direction ?? _direction,
);
  String? get identifier => _identifier;
  String? get language => _language;
  String? get name => _name;
  String? get englishName => _englishName;
  String? get format => _format;
  String? get type => _type;
  String? get direction => _direction;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['identifier'] = _identifier;
    map['language'] = _language;
    map['name'] = _name;
    map['englishName'] = _englishName;
    map['format'] = _format;
    map['type'] = _type;
    map['direction'] = _direction;
    return map;
  }

}

/// number : 1
/// text : "بِسۡمِ ٱللَّهِ ٱلرَّحۡمَـٰنِ ٱلرَّحِیمِ\n"
/// numberInSurah : 1
/// juz : 1
/// manzil : 1
/// page : 1
/// ruku : 1
/// hizbQuarter : 1
/// sajda : false

class Ayahs {
  Ayahs({
      num? number,
      String? text,
      num? numberInSurah,
      num? juz,
      num? manzil,
      num? page,
      num? ruku,
      num? hizbQuarter,
      bool? sajda,}){
    _number = number;
    _text = text;
    _numberInSurah = numberInSurah;
    _juz = juz;
    _manzil = manzil;
    _page = page;
    _ruku = ruku;
    _hizbQuarter = hizbQuarter;
    _sajda = sajda;
}

  Ayahs.fromJson(dynamic json) {
    _number = json['number'];
    _text = json['text'];
    _numberInSurah = json['numberInSurah'];
    _juz = json['juz'];
    _manzil = json['manzil'];
    _page = json['page'];
    _ruku = json['ruku'];
    _hizbQuarter = json['hizbQuarter'];
    _sajda = json['sajda'];
  }
  num? _number;
  String? _text;
  num? _numberInSurah;
  num? _juz;
  num? _manzil;
  num? _page;
  num? _ruku;
  num? _hizbQuarter;
  bool? _sajda;
Ayahs copyWith({  num? number,
  String? text,
  num? numberInSurah,
  num? juz,
  num? manzil,
  num? page,
  num? ruku,
  num? hizbQuarter,
  bool? sajda,
}) => Ayahs(  number: number ?? _number,
  text: text ?? _text,
  numberInSurah: numberInSurah ?? _numberInSurah,
  juz: juz ?? _juz,
  manzil: manzil ?? _manzil,
  page: page ?? _page,
  ruku: ruku ?? _ruku,
  hizbQuarter: hizbQuarter ?? _hizbQuarter,
  sajda: sajda ?? _sajda,
);
  num? get number => _number;
  String? get text => _text;
  num? get numberInSurah => _numberInSurah;
  num? get juz => _juz;
  num? get manzil => _manzil;
  num? get page => _page;
  num? get ruku => _ruku;
  num? get hizbQuarter => _hizbQuarter;
  bool? get sajda => _sajda;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['number'] = _number;
    map['text'] = _text;
    map['numberInSurah'] = _numberInSurah;
    map['juz'] = _juz;
    map['manzil'] = _manzil;
    map['page'] = _page;
    map['ruku'] = _ruku;
    map['hizbQuarter'] = _hizbQuarter;
    map['sajda'] = _sajda;
    return map;
  }

}