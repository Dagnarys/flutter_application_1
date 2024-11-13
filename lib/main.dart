import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      color: Color.fromARGB(213, 149, 195, 56),
      debugShowCheckedModeBanner: false,
      home: MyBottomNavigationWidget());
        

    
  }
}

class MyBottomNavigationWidget extends StatefulWidget {
  const MyBottomNavigationWidget({
    super.key,
  });

  @override
  State<MyBottomNavigationWidget> createState() => _MyBottomNavigationWidgetState();
}

class _MyBottomNavigationWidgetState extends State<MyBottomNavigationWidget> {
  int _itemSelected = 0;
  void _bottomBarNavigation(int index){
    setState(() {
      _itemSelected = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Center(
          child: Center(child: _navigationPages[_itemSelected],),
        ),
      
      bottomNavigationBar:  Stack(
        
        children: [
            Container(
              decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors:  [const Color.fromARGB(255, 208, 155, 155)!, const Color.fromARGB(255, 244, 61, 61)!])),
              height:60,
            ),
             Padding(
               padding: const EdgeInsets.all(0.0),
               child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedFontSize: 15,
                currentIndex: _itemSelected,
                iconSize: 32,             
                backgroundColor: Colors.transparent,
                unselectedItemColor: Color.fromARGB(255, 44, 188, 245),
                selectedItemColor:const Color.fromARGB(255, 105, 228, 34),
                onTap: _bottomBarNavigation,
                items: const[
                  BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home', backgroundColor: Color.fromARGB(255, 105, 228, 34)),
                  BottomNavigationBarItem(icon: Icon(Icons.info),label: 'News'),
                  BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favor'),
                  BottomNavigationBarItem(icon: Icon(Icons.list),label: 'List')
                           ],
                         ),
             ),
        ],
        
      )
    );
       
  }
}
final List<Widget> _navigationPages =[
  const Center(child:Text('Page:Home')),
  const Center(child:Text('Page:News')),
  const Center(child:Text('Page:Favor')),
  const Center(child:Text('Page:List')),
  ];


