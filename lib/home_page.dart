import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool like = false;
  bool correo = false;
  bool llamada = false;
  bool ruta = false;
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.network(
            'https://iteso.mx/image/journal/article?img_id=12606184&t=1533337739063g'),
        ListTile(
          title: Text(
            'El ITESO, Universidad Jesuita de Guadalajara',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
          subtitle: Text(
            'San Pedro Tlaquepaque, Jal',
            style: TextStyle(fontSize: 10),
          ),
          trailing: IconButton(
              tooltip: '$_counter',
              onPressed: () {
                like = true;
                _counter++;
                setState(() {});
                print('$_counter');
              },
              icon: Icon(
                Icons.thumb_up,
              ),
              color: like ? Colors.blue : Colors.grey),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            textDirection: TextDirection.rtl,
            children: [Text('$_counter')],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      correo = !correo;
                      setState(() {});
                      correo
                          ? (ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(SnackBar(
                                content: Text(
                                    "Enviar correo al ITESO admision@iteso.mx"))))
                          : print('');
                    },
                    icon: Icon(
                      Icons.mail,
                      size: 40,
                      color: correo ? Colors.indigo : Colors.black,
                    )),
                Text('Correo')
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      llamada = !llamada;
                      setState(() {});
                      llamada
                          ? (ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(SnackBar(
                                content:
                                    Text("Llamar al ITESO (33) 3669 3434"))))
                          : print('');
                    },
                    icon: Icon(
                      Icons.add_ic_call,
                      size: 40,
                      color: llamada ? Colors.indigo : Colors.black,
                    )),
                Text('Llamada')
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      ruta = !ruta;
                      setState(() {});
                      ruta
                          ? (ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(SnackBar(
                                content: Text(
                                    "Ir al ITESO a Periférico Sur 8585."))))
                          : print('pushed');
                    },
                    icon: Icon(
                      Icons.directions,
                      size: 40,
                      color: ruta ? Colors.indigo : Colors.black,
                    )),
                Text('Ruta')
              ],
            )
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text(
                'El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente) es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957. La institución forma parte del Sistema Universitario Jesuita (SUJ) que integra a ocho universidades en México. La universidad es nombrada como la Universidad Jesuita de Guadalajara.'),
          ),
        )
      ],
    ));
  }
}
