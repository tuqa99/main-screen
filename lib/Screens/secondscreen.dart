import 'package:flutter/material.dart';
import 'package:seventhweek/main.dart';

class MySecondScreen extends StatefulWidget {
  const MySecondScreen({super.key});

  @override
  State<MySecondScreen> createState() => _MySecondScreenState();
}

class _MySecondScreenState extends State<MySecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    
      body: Center(
          child: Column( 
        children: [
          Text(
            'hello from second screen',
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(
            onPressed: (){
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MyApp();
              },));
            });
          }, child: Text('go to home page'))
        ],
      )),
    );
  }
}
