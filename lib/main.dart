import 'package:flutter/material.dart';

void main() => runApp(MisIconosApp());

class MisIconosApp extends StatelessWidget {
  const MisIconosApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Valentin Loya"),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
          centerTitle: true,
          backgroundColor: Color(0xfff90000),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'Valentin Loya Mat:22308051281244',
              style: TextStyle(color: Color(0xff1900f9), fontSize: 25),
            ),
            SizedBox(
              height:
                  20, // Espacio entre el primer texto y la primera fila de iconos
            ),
            // Primera fila de iconos con subtítulos
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconWithSubtitle(
                  icon: Icons.air,
                  subtitle: "Aire",
                  iconColor: Colors.pink,
                ),
                IconWithSubtitle(
                  icon: Icons.park,
                  subtitle: "Parque",
                  iconColor: Colors.green,
                ),
                IconWithSubtitle(
                  icon: Icons.high_quality,
                  subtitle: "Calidad",
                  iconColor: Colors.blue,
                ),
              ],
            ),
            SizedBox(
              height: 20, // Espacio entre las dos filas de iconos
            ),
            // Segunda fila de iconos con subtítulos
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconWithSubtitle(
                  icon: Icons.video_collection,
                  subtitle: "Videos",
                  iconColor: Colors.black,
                ),
                IconWithSubtitle(
                  icon: Icons.music_note,
                  subtitle: "Música",
                  iconColor: Colors.purple,
                ),
                IconWithSubtitle(
                  icon: Icons.photo_camera,
                  subtitle: "Cámara",
                  iconColor: Colors.orange,
                ),
              ],
            ),
            SizedBox(
              height:
                  20, // Espacio entre la segunda fila de iconos y el borde inferior
            ),
          ],
        ),
      ),
    );
  }
}

// Widget personalizado para icono con subtítulo
class IconWithSubtitle extends StatelessWidget {
  final IconData icon;
  final String subtitle;
  final Color iconColor;

  const IconWithSubtitle({
    required this.icon,
    required this.subtitle,
    required this.iconColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: iconColor,
          size: 40.0,
        ),
        SizedBox(height: 8), // Espacio entre el icono y el subtítulo
        Text(
          subtitle,
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ],
    );
  }
}
