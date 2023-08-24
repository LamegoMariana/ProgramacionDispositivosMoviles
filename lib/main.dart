import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('MC Flutter'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 120,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.account_circle_rounded,
                            size: 50,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Flutter McFLutter",
                                style: TextStyle(fontSize: 23),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text("Experienced App Developer"),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("123 Main Street"),
                      Spacer(flex: 1),
                      Text("(415) 555-0198")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(flex: 1),
                      Icon(Icons.accessibility_rounded),
                      Spacer(flex: 1),
                      Icon(Icons.timer),
                      Spacer(flex: 1),
                      Icon(Icons.phone_android),
                      Spacer(flex: 1),
                      Icon(Icons.phone_iphone),
                      Spacer(flex: 1)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
