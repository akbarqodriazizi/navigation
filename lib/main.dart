// M. Akbar Qodri Azizi
// 1102200011
// CE 03 01

import 'package:flutter/material.dart';
import 'package:navigasi/halaman2.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var judul = "Hello State";
  var body = "ini isi bodyyyyy";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(judul)),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          judul = "ini tugass akbarr ";
          body = " ini adalah body yang berubah";
        });

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const MyWidget(
              parameter: 'A',
              parameter2: "B",
            ),
          ),
        );
      }),
      body: Text(body),
    );
  }
}
