import 'package:flutter/material.dart';

class App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }

}

class AppState extends State<App>{
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home:Scaffold(
      appBar:AppBar(
        title:Text('Lets see some images!')
      ),
      body: Text('$counter'),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            counter +=1;
          });
        },
        child: Icon(Icons.add),
      ) ,   
    ),
  );
  }

} 