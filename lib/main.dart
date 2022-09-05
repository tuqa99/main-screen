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
  String Mytestgrroupvalue = '';
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      appBar: AppBar(title: Text('Genius child'),
     
      
        backgroundColor: Colors.redAccent,
       
      ),
      body: Center(
        child: Container(
            
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              CircleAvatar(
                maxRadius: 100,
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/vectors/little-smart-student-experiencing-magnet-vector-id1180269505?k=20&m=1180269505&s=612x612&w=0&h=FCZ58xxTNkoFw0aeJQlIxthPg5XsOHnFDE4GNH4tpZ0='),
              ),
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
                  ' Electrical World',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
              SizedBox(height: 44,),
              CircleAvatar(
                maxRadius: 100,
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/vectors/vector-illustration-of-flat-robot-vector-id949215978?k=20&m=949215978&s=612x612&w=0&h=QjYsrQRv_xjw-A5-kgV3ZzFFYOzWUMEqbgVnFS3s51c='),
              ),
              MaterialButton(
                color: Colors.redAccent,
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return MySecondScreen();
                      },
                    ));
                  });
                },
                child: const Text(
                  ' Robtics',
                  style: TextStyle(fontSize: 30, color: Colors.black),
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
            ])),
      ),
    );
  }
}
