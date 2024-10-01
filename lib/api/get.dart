import 'dart:convert';

import 'package:lab1mad/model/newsApi.dart';
import 'package:lab1mad/static.dart';
import 'package:http/http.dart' as http;

class GetApi {
  static Future<NewsApi?> newsApiCall() async {
    try {
      var url = Uri.https(StaticValue.baseURL, '/v2/everything',
          {'q': 'tesla', 'apiKey': StaticValue.apiKey});

      // Await the http get response, then decode the json-formatted response.
      var response = await http.get(url,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Cache-Control': 'no-cache',
          });

      if (response.statusCode.toString().contains("20")) {
        var jsonResponse = json.decode(response.body);
        NewsApi newsApiData = NewsApi.fromJson(jsonResponse);
        return newsApiData;
      } else {
        print('Request failed with status: ${response.statusCode}.');
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
