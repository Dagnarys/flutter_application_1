import 'package:flutter/material.dart';

class Chipswidget extends StatefulWidget {
  const Chipswidget({super.key});

  @override
  State<Chipswidget> createState() => _ChipswidgetState();
}
// class ListCoffeeItem {
// List<String> nameCoffee =[
//   'All Coffee', 'Machiato','Latte','Americano'
// ]; 
// ListCoffeeItem();
// }

class _ChipswidgetState extends State<Chipswidget> {
  // final ListCoffeeItem listCoffeeItem = ListCoffeeItem(); 
  List<String> listCoffeeItem =[
  'All Coffee', 'Machiato','Latte','Americano'
  ]; 
  List<String> selectedCoffee =[];
  @override
  Widget build(BuildContext context) {
    
    return Container(
      alignment: Alignment.center,
      width: 327,
      height: 50,

      child: SingleChildScrollView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        child: Wrap(
          
          spacing: 16,
          children: listCoffeeItem.
          map((coffee){
            return FilterChip(
              side:BorderSide.none,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
               
                 ),
              labelPadding: const EdgeInsets.all(0),
              showCheckmark: false,
              backgroundColor: const Color(0x24EDEDED),
              selectedColor: const Color(0xFFC67C4E),
              labelStyle:  TextStyle(
                color: selectedCoffee.contains(coffee)
                ? Colors.white
                : const Color.fromARGB(255, 0, 0, 0),
                fontSize: 14,
                fontFamily: 'Sora',
                height: 1.5,
                fontWeight: selectedCoffee.contains(coffee)
                ? FontWeight.w600
                : FontWeight.w400
              ),
              label: Text(
                coffee,
                ),
              onSelected: (bool selected){
                setState(() {
                  selected ? selectedCoffee.add(coffee):selectedCoffee.remove(coffee);
                });
              },
              selected: selectedCoffee.contains(coffee),
            );
          }).toList()
        ),
      ),

    );

    
  }
}