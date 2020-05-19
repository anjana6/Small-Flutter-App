import 'package:flutter/material.dart';
import 'package:http/http.dart' as http  ;
import './models/image_model.dart'; 
import 'dart:convert';
import './widgets/image_list.dart';

class App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }

}

class AppState extends State<App>{
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async{
    counter++;
    var response = await http.get('https://jsonplaceholder.typicode.com/photos/$counter');
    
    var imageModel = ImageModel.fromJson(json.decode(response.body));
    print("hiii$imageModel");

    setState(() {
       images.add(imageModel);
    });
   
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home:Scaffold(
      appBar:AppBar(
        title:Text('Lets see some images!')
      ),
      body: ImageList(images),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchImage,
        child: Icon(Icons.add),
      ) ,   
    ),
  );
  }

} 