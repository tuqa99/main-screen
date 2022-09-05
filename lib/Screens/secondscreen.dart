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
    
      body: ListView(children: [
        Center(
            child: Column( 
          children: [
            Image(width: double.infinity,
            height: 300,
              image: NetworkImage('https://media.istockphoto.com/vectors/set-of-cute-robots-vector-id1184446397?k=20&m=1184446397&s=612x612&w=0&h=GxXdZQlo6uVwEFwtWGX0n1Ydd6kOp8zc0hWxTYgRTOY=')),
            Text(
              'Welcome to the robotics Wolrd',
              style: TextStyle(fontSize: 20),
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
        )),],
      ),
    );
  }
}
