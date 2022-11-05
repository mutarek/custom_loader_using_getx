
import 'dart:convert';

TvShowModel tvShowModelFromJson(String str) =>
    TvShowModel.fromJson(json.decode(str));

class TvShowModel{
  String?total;
  int?page;
  int?pages;
  List<TvShow>? tvshow;

  TvShowModel({this.total, this.page, this.pages, this.tvshow});
  
  factory TvShowModel.fromJson(Map<String,dynamic> js)=> TvShowModel(
    total: js['total'],
    page: js['page'],
    pages: js['pages'],
    tvshow: List<TvShow>.from(js["tv_shows"].map((x) => TvShow.fromJson(x))),
  );
}



class TvShow{
  int? id;
  String?name;
  String?permalink;
  String?start_date;
  String?end_date;
  String?country;
  String?network;
  String?status;
  String?image_thumbnail_path;

  TvShow({
      this.id,
      this.name,
      this.permalink,
      this.start_date,
      this.end_date,
      this.country,
      this.network,
      this.status,
      this.image_thumbnail_path});

  factory TvShow.fromJson(Map<String,dynamic>json)=> TvShow(
    id: json['id'],
    name: json['name'],
    permalink: json['permalink'],
    start_date: json['start_date'],
    end_date: json['end_date'],
    country: json['country'],
    network: json['network'],
    status: json['status'],
    image_thumbnail_path: json['image_thumbnail_path'],
  );
}