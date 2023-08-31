import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isPressed1 = false;
  bool _isPressed2 = false;
  bool _isPressed3 = false;
  bool _isPressed4 = false;
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
            height: 150,
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
                      IconButton(
                          icon: Icon(Icons.accessibility_rounded),
                          onPressed: () {
                            setState(() {
                              _isPressed1 =
                                  !_isPressed1; // Cambia el estado al presionar
                            });
                          },
                          color: _isPressed1 ? Colors.indigo : Colors.black),
                      IconButton(
                          icon: Icon(Icons.timer),
                          onPressed: () {
                            setState(() {
                              _isPressed2 =
                                  !_isPressed2; // Cambia el estado al presionar
                            });
                          },
                          color: _isPressed2 ? Colors.indigo : Colors.black),
                      IconButton(
                          icon: Icon(Icons.phone_android),
                          onPressed: () {
                            setState(() {
                              _isPressed3 =
                                  !_isPressed3; // Cambia el estado al presionar
                            });
                          },
                          color: _isPressed3 ? Colors.indigo : Colors.black),
                      IconButton(
                          icon: Icon(Icons.phone_iphone),
                          onPressed: () {
                            setState(() {
                              _isPressed4 =
                                  !_isPressed4; // Cambia el estado al presionar
                            });
                          },
                          color: _isPressed4 ? Colors.indigo : Colors.black),
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
