import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:test_2/model/respons_body.dart';

const String url =
    'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline';
final uri = Uri.parse(url);

Stream<List<dynamic>> getdata() async* {
  final response = await http.get(uri);
  print(response.statusCode);
  if (response.statusCode <= 299) {
    final List<dynamic> result = json.decode(response.body);
  
    yield result;
  } else if (response.statusCode <= 399) {
    // yield 'error';
  } else if (response.statusCode <= 499) {
    // yield 'error';
  } else {
    // yield 'error';
  }
}
