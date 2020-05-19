import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class  App extends StatelessWidget {

  
  void fetchPost() async{
    String url = 'https://jsonplaceholder.typicode.com/posts';
    var response = await http.get(url);

    String _data = json.decode(response.body).toString();
    print(_data);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title:Text('Json parse'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(onPressed: fetchPost),

      ),
    );
  }
  
}