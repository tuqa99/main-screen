import 'package:flutter/material.dart';

import 'package:seventhweek/main.dart';

class MyFirstScreen extends StatefulWidget {
  const MyFirstScreen({super.key});

  @override
  State<MyFirstScreen> createState() => _MyFirstScreenState();
}

class _MyFirstScreenState extends State<MyFirstScreen> {
  List myItems = ['School', 'Higher school', 'University student', 'employee'];
  String selectItems = 'Higher school';
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 28, 58, 224),
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              'hello from first screen',
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return MyApp();
                      },
                    ));
                  });
                },
                child: Text('backe to the home page')),
            Center(
              child: Row(
                children: [Text( 'choese your state : ', style: TextStyle(fontSize: 15 ,),), SizedBox(width: 33,),
                  DropdownButton(
                      value: selectItems,
                      items: myItems
                          .map((e) => DropdownMenuItem(value: e, child: Text("${e}" , style: TextStyle(fontSize: 20),)))
                          .toList(),
                      onChanged: ((val) {
                        setState(() {
                          selectItems = val.toString();
                        });
                      })),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
