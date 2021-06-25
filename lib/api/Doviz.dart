import 'dart:convert';

Doviz dovizFromJson(String str) => Doviz.fromJson(json.decode(str));

String dovizToJson(Doviz data) => json.encode(data.toJson());

class Doviz {
  Doviz({
    this.result,
    this.documentation,
    this.termsOfUse,
    this.timeLastUpdateUnix,
    this.timeLastUpdateUtc,
    this.timeNextUpdateUnix,
    this.timeNextUpdateUtc,
    this.baseCode,
    this.conversionRates,
  });

  String result;
  String documentation;
  String termsOfUse;
  int timeLastUpdateUnix;
  String timeLastUpdateUtc;
  int timeNextUpdateUnix;
  String timeNextUpdateUtc;
  String baseCode;
  Map<String, double> conversionRates;

  factory Doviz.fromJson(Map<String, dynamic> json) => Doviz(
    result: json["result"],
    documentation: json["documentation"],
    termsOfUse: json["terms_of_use"],
    timeLastUpdateUnix: json["time_last_update_unix"],
    timeLastUpdateUtc: json["time_last_update_utc"],
    timeNextUpdateUnix: json["time_next_update_unix"],
    timeNextUpdateUtc: json["time_next_update_utc"],
    baseCode: json["base_code"],
    conversionRates: Map.from(json["conversion_rates"]).map((k, v) => MapEntry<String, double>(k, v.toDouble())),
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "documentation": documentation,
    "terms_of_use": termsOfUse,
    "time_last_update_unix": timeLastUpdateUnix,
    "time_last_update_utc": timeLastUpdateUtc,
    "time_next_update_unix": timeNextUpdateUnix,
    "time_next_update_utc": timeNextUpdateUtc,
    "base_code": baseCode,
    "conversion_rates": Map.from(conversionRates).map((k, v) => MapEntry<String, dynamic>(k, v)),
  };
  Map<String, dynamic> toJsons() => {
    "result": result,
    "documentation": documentation,
    "terms_of_use": termsOfUse,
    "time_last_update_unix": timeLastUpdateUnix,
    "time_last_update_utc": timeLastUpdateUtc,
    "time_next_update_unix": timeNextUpdateUnix,
    "time_next_update_utc": timeNextUpdateUtc,
    "base_code": baseCode,
    "conversion_rates": Map.from(conversionRates).map((k, v) => MapEntry<String, dynamic>(k, v)),
  };

}

class DovizListem {

  DovizListem({this.paraAdi, this.paraDegeri});

  String paraAdi;
  double paraDegeri;

}
