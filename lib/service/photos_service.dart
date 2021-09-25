import 'dart:convert';

import 'package:flutter_gallery_paxels/model/resp_photos.dart';
import 'package:http/http.dart' as http;

class PhotoServices {

  Future<List<Photos>> fetchPhoto(int page, int perPage) async {
    final url = 'https://api.pexels.com/v1/curated?per_page=$perPage&page=$page';
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': '563492ad6f917000010000010f0069c47d43476c856712a57f9eb3ce'
    };
    final response = await http.get(Uri.parse(url), headers: requestHeaders);

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final Iterable json = body["photos"];
      return json.map((e) => Photos.fromJson(e)).toList();
    }
    throw Exception("Unable to perform request!");
  }
}