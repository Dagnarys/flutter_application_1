import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/startPage.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: WordsWidget()
      );
  
  }
}
