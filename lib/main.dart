import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "name": "Jon",
      "age": 28,
      "favColor": [
        "Green",
        "Red",
        "Black",
        "Green",
        "Red",
        "Black",
        "Green",
        "Red",
        "Black",
        "Green",
        "Red",
        "Black",
      ],
    },
    {
      "name": "Kenedy",
      "age": 25,
      "favColor": [
        "Amber",
        "Red",
        "White",
      ],
    },
    {
      "name": "Qaledy",
      "age": 20,
      "favColor": [
        "Green",
        "Red",
        "Black",
        "Green",
        "Red",
        "Black",
        "Green",
        "Red",
        "Black",
        "Green",
        "Red",
        "Black",
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ID Apps"),
        ),
        body: ListView(
          children: myList.map((data) {
            print(data["favColor"]);
            List myFavColor = data["favColor"];
            print("----------");
            print(myFavColor);
            return Card(
              margin: EdgeInsets.all(20),
              color: Colors.black.withOpacity(0.1),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Row
                      Row(
                        children: [
                          CircleAvatar(),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("name: ${data['name']}"),
                              Text("age: ${data['age']}"),
                            ],
                          )
                        ],
                      ),
                      //favColor
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: myFavColor.map((color) {
                            return Container(
                              color: Colors.amber,
                              margin: EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 8,
                              ),
                              padding: EdgeInsets.all(10),
                              child: Text(color),
                            );
                          }).toList(),
                        ),
                      )
                    ]),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
