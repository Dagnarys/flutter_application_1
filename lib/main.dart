import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/widget.dart';


void main() {
  const app =  MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: Example(),
      ),
    );
  }
}
