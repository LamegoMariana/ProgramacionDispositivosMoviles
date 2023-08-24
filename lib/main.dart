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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                //height: 200,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Column(children: [
                  // ¿Columna de más?
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.account_circle_rounded),
                              Text("Flutter McFLutter"),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
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
                    children: [Text("123 Main Street"), Text("(415) 555-0198")],
                  ),
                  Row(
                    children: [
                      Column(children: [
                        Row(
                          children: [
                            Icon(Icons.accessibility_rounded),
                            Icon(Icons.timer),
                            Icon(Icons.phone_android),
                            Icon(Icons.phone_iphone)
                          ],
                        )
                      ])
                    ],
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
