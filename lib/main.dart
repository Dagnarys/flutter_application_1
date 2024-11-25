import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/app.dart';

void main() {
  const app =  MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      home: Scaffold(  
        body: App()
        ),
    );
  }
}