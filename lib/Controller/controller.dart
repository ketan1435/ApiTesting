
import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
class AppController extends GetxController
{
   var data;
  Future<void> getUserApi() async 
  {
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    if(response.statusCode==200)
    {
     data = jsonDecode(response.body.toString());
    }
    else
      {

      }
  }
}

class AppController1 extends GetxController
{
  var data;
  Future<void> getUserApi1() async
  {
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));
    if(response.statusCode == 200)
    {
      data = jsonDecode(response.body.toString());
    }
    else
      {

      }
  }
}