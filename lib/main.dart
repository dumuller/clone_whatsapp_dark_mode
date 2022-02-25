import 'package:flutter/material.dart';
import 'package:whatsapp/core/inject/inject.dart';
import 'package:whatsapp/layers/presentation/ui/pages/home/home_page.dart';

void main() {
  Inject.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
