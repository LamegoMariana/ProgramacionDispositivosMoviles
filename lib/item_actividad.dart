import 'package:flutter/material.dart';

class ItemActividad extends StatefulWidget {
  ItemActividad({super.key});

  @override
  State<ItemActividad> createState() => _ItemActividadState();
}

class _ItemActividadState extends State<ItemActividad> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final lugares = [
      "Michoacan",
      "Timbuktu",
      "Jalisco",
      "Ciudad de Mexico",
      "Cancun"
    ];
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/${[
                  'bosque.jpg',
                  'bosque.jpg',
                  'bosque.jpg',
                  'bosque.jpg',
                  'bosque.jpg',
                ][index]}',
                width: 120,
                height: 120,
              ),
            ],
          ),
          Text("Day ${index + 1}", style: TextStyle(fontSize: 11)),
          Text(lugares[index]),
        ],
      ),
    );
  }
}
