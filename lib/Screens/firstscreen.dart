import 'package:flutter/material.dart';

import 'package:seventhweek/main.dart';

class MyFirstScreen extends StatefulWidget {
  const MyFirstScreen({super.key});

  @override
  State<MyFirstScreen> createState() => _MyFirstScreenState();
}

class _MyFirstScreenState extends State<MyFirstScreen> {
  List myItems = ['4-6years', '6-10 Years', '10-12 Years', 'more than 12years'];
  String selectItems = '10-12 Years';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 226, 7, 1),
      appBar: AppBar(),
      body: ListView(
        children: [
          Column( 
            children: [
              Image(
                  width: double.infinity,
                  height: 300,
                  image: NetworkImage(
                      'https://media.istockphoto.com/vectors/man-and-woman-connect-electrical-plug-socket-people-want-to-charge-vector-id1336992585?k=20&m=1336992585&s=612x612&w=0&h=mvx7bGSEHJmYccClLRWdfSI1MQzJlagDIg2UqGSO9P8=')),
              Text(
                'Welcome to the Electrical World',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              
              Center(
                child: Row(
                  children: [
                    Text(
                      'choese your Age : ',
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                    SizedBox(
                      width: 33,
                    ),
                    DropdownButton(
                        value: selectItems,
                        items: myItems
                            .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(
                                  "${e}",
                                  style: TextStyle(fontSize: 18),
                                )))
                            .toList(),
                        onChanged: ((val) {
                          setState(() {
                            selectItems = val.toString();
                          });
                        })),
                        
                  ],
                ),
                
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
            ],
          ),
        ],
      ),
    );
  }
}
