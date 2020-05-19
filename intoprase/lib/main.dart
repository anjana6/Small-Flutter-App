import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';


void main() async{

    List _Data = await  fetchPost();
    print(_Data[1]['title']);

  runApp(MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title:Text('Json parse'),
          centerTitle: true,
        ),
        

      ),
    ));
}

Future<List> fetchPost() async{
    String url = 'https://jsonplaceholder.typicode.com/posts';
    var response = await http.get(url);

    return json.decode(response.body);
    
  }