import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyServices
{
  static Future<dynamic> apihomeservice()async
  {
    var request = http.Request('GET', Uri.parse('https://www.themealdb.com/api/json/v1/1/search.php?s'));

    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
       var res = await response.stream.bytesToString();
       return res;
  }
  else {
  print(response.reasonPhrase);
  return 0;
  }
  }

  static Future<dynamic> apidescservice(id)async
  {
    var request = http.Request('GET', Uri.parse('https://www.themealdb.com/api/json/v1/1/lookup.php?i=${id}'));

    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      var res = await response.stream.bytesToString();
      return res;
    }
    else {
      print(response.reasonPhrase);
      return 0;
    }
  }

  static Future<dynamic> apirandservice()async
  {
    var request = http.Request('GET', Uri.parse('https://www.themealdb.com/api/json/v1/1/random.php'));

    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      var res = await response.stream.bytesToString();
      return res;
    }
    else {
      print(response.reasonPhrase);
      return 0;
    }
  }
}