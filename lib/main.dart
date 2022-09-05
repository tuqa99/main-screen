

import 'package:flutter/material.dart';
import './Screens/firstscreen.dart';
import './Screens/secondscreen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  String Mytestgrroupvalue ='';
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            MaterialButton(
              color: Colors.amber,
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MyFirstScreen();
                      },
                    ),
                  );
                });
              },
              child: const Text(
                ' go to the 1st screen',
                style: TextStyle(fontSize: 30, color: Colors.black54),
              ),
            ),
            MaterialButton(
              color: Colors.redAccent,
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MySecondScreen();
                  },));
                });
              },
              child: const Text(
                ' go to the 2nd screen',
                style: TextStyle(fontSize: 30, color: Colors.black54),
              ),
            ),
            // RadioListTile(title: Text('femal'),
            //   value: 'femal', groupValue: Mytestgrroupvalue, onChanged:(val) {
            //   setState(() { Mytestgrroupvalue.toString();
                
            //   });
            // },),
            //    RadioListTile(title: Text('meal'),
            //     value: 'femal', groupValue: Mytestgrroupvalue, onChanged:(val) {
            //   setState(() { Mytestgrroupvalue.toString();
                
            //   });
            // },),
          ]),
        
      ),
    );
  }
}
