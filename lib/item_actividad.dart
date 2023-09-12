import 'package:flutter/material.dart';

class ItemActividad extends StatefulWidget {
  ItemActividad({super.key});

  @override
  State<ItemActividad> createState() => _ItemActividadState();
}

class _ItemActividadState extends State<ItemActividad> {
  int? seleccionActual;
  var assetsLVH = {
    0: "assets/michoacan.jpg",
    1: "assets/timbuktu.png",
    2: "assets/jalisco.png",
    3: "assets/cdmx.jpg",
    4: "assets/cancun.png",
  };

  var lugaresGroup = {
    0: "Michoacan",
    1: "Timbuktu",
    2: "Jalisco",
    3: "Ciudad de Mexico",
    4: "Cancun"
  };

  fotosGenerador() {
    return assetsLVH.entries
        .map((e) => ListTile(
              leading: Image.asset(
                "${assetsLVH[e.key]}",
                width: 120,
                height: 120,
              ),
              trailing: Radio(
                  value: e.key,
                  groupValue: seleccionActual,
                  onChanged: (newValue) {
                    seleccionActual = newValue;
                    setState(() {});
                  }),
            ))
        .toList(); // Convierte el resultado a una lista de widgets
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 120,
            width: 120,
            color: Colors.purple,
          ),
          Text("Day 1", style: TextStyle(fontSize: 11)),
          Text("Bali mountains"),
        ],
      ),
    );
  }
}
