/// photos : [{"id":1906821,"url":"https://www.pexels.com/photo/cold-fashion-people-woman-1906821/","photographer":"Alessio Cesario","photographer_url":"https://www.pexels.com/@alessio-cesario-975080","photographer_id":975080,"avg_color":"#C1914E","src":{"original":"https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg","large2x":"https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940","large":"https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg?auto=compress&cs=tinysrgb&h=650&w=940","medium":"https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg?auto=compress&cs=tinysrgb&h=350","small":"https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg?auto=compress&cs=tinysrgb&h=130","portrait":"https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800","landscape":"https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200","tiny":"https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"},"liked":false},{"id":9605215,"url":"https://www.pexels.com/photo/child-in-red-and-white-knit-cap-smiling-9605215/","photographer":"Mitya  Zotov","photographer_url":"https://www.pexels.com/@mitya-zotov-71755548","photographer_id":71755548,"avg_color":"#706F6B","src":{"original":"https://images.pexels.com/photos/9605215/pexels-photo-9605215.jpeg","large2x":"https://images.pexels.com/photos/9605215/pexels-photo-9605215.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940","large":"https://images.pexels.com/photos/9605215/pexels-photo-9605215.jpeg?auto=compress&cs=tinysrgb&h=650&w=940","medium":"https://images.pexels.com/photos/9605215/pexels-photo-9605215.jpeg?auto=compress&cs=tinysrgb&h=350","small":"https://images.pexels.com/photos/9605215/pexels-photo-9605215.jpeg?auto=compress&cs=tinysrgb&h=130","portrait":"https://images.pexels.com/photos/9605215/pexels-photo-9605215.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800","landscape":"https://images.pexels.com/photos/9605215/pexels-photo-9605215.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200","tiny":"https://images.pexels.com/photos/9605215/pexels-photo-9605215.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"},"liked":false}]

class RespPhotos {
  RespPhotos({
      List<Photos>? photos,}){
    _photos = photos;
}

  RespPhotos.fromJson(dynamic json) {
    if (json['photos'] != null) {
      _photos = [];
      json['photos'].forEach((v) {
        _photos?.add(Photos.fromJson(v));
      });
    }
  }
  List<Photos>? _photos;

  List<Photos>? get photos => _photos;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_photos != null) {
      map['photos'] = _photos?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1906821
/// url : "https://www.pexels.com/photo/cold-fashion-people-woman-1906821/"
/// photographer : "Alessio Cesario"
/// photographer_url : "https://www.pexels.com/@alessio-cesario-975080"
/// photographer_id : 975080
/// avg_color : "#C1914E"
/// src : {"original":"https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg","large2x":"https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940","large":"https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg?auto=compress&cs=tinysrgb&h=650&w=940","medium":"https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg?auto=compress&cs=tinysrgb&h=350","small":"https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg?auto=compress&cs=tinysrgb&h=130","portrait":"https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800","landscape":"https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200","tiny":"https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"}
/// liked : false

class Photos {
  Photos({
      int? id, 
      String? url, 
      String? photographer, 
      String? photographerUrl, 
      int? photographerId, 
      String? avgColor, 
      Src? src, 
      bool? liked,}){
    _id = id;
    _url = url;
    _photographer = photographer;
    _photographerUrl = photographerUrl;
    _photographerId = photographerId;
    _avgColor = avgColor;
    _src = src;
    _liked = liked;
}

  Photos.fromJson(dynamic json) {
    _id = json['id'];
    _url = json['url'];
    _photographer = json['photographer'];
    _photographerUrl = json['photographer_url'];
    _photographerId = json['photographer_id'];
    _avgColor = json['avg_color'];
    _src = json['src'] != null ? Src.fromJson(json['src']) : null;
    _liked = json['liked'];
  }
  int? _id;
  String? _url;
  String? _photographer;
  String? _photographerUrl;
  int? _photographerId;
  String? _avgColor;
  Src? _src;
  bool? _liked;

  int? get id => _id;
  String? get url => _url;
  String? get photographer => _photographer;
  String? get photographerUrl => _photographerUrl;
  int? get photographerId => _photographerId;
  String? get avgColor => _avgColor;
  Src? get src => _src;
  bool? get liked => _liked;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['url'] = _url;
    map['photographer'] = _photographer;
    map['photographer_url'] = _photographerUrl;
    map['photographer_id'] = _photographerId;
    map['avg_color'] = _avgColor;
    if (_src != null) {
      map['src'] = _src?.toJson();
    }
    map['liked'] = _liked;
    return map;
  }

}

/// original : "https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg"
/// large2x : "https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
/// large : "https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"
/// medium : "https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg?auto=compress&cs=tinysrgb&h=350"
/// small : "https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg?auto=compress&cs=tinysrgb&h=130"
/// portrait : "https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800"
/// landscape : "https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200"
/// tiny : "https://images.pexels.com/photos/1906821/pexels-photo-1906821.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"

class Src {
  Src({
      String? original, 
      String? large2x, 
      String? large, 
      String? medium, 
      String? small, 
      String? portrait, 
      String? landscape, 
      String? tiny,}){
    _original = original;
    _large2x = large2x;
    _large = large;
    _medium = medium;
    _small = small;
    _portrait = portrait;
    _landscape = landscape;
    _tiny = tiny;
}

  Src.fromJson(dynamic json) {
    _original = json['original'];
    _large2x = json['large2x'];
    _large = json['large'];
    _medium = json['medium'];
    _small = json['small'];
    _portrait = json['portrait'];
    _landscape = json['landscape'];
    _tiny = json['tiny'];
  }
  String? _original;
  String? _large2x;
  String? _large;
  String? _medium;
  String? _small;
  String? _portrait;
  String? _landscape;
  String? _tiny;

  String? get original => _original;
  String? get large2x => _large2x;
  String? get large => _large;
  String? get medium => _medium;
  String? get small => _small;
  String? get portrait => _portrait;
  String? get landscape => _landscape;
  String? get tiny => _tiny;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['original'] = _original;
    map['large2x'] = _large2x;
    map['large'] = _large;
    map['medium'] = _medium;
    map['small'] = _small;
    map['portrait'] = _portrait;
    map['landscape'] = _landscape;
    map['tiny'] = _tiny;
    return map;
  }

}