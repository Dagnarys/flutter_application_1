import 'package:flutter/material.dart';

class Promowidget extends StatelessWidget {
  const Promowidget({super.key});  @override


  Widget build(BuildContext context) {
    return Stack(
      children: [
            Container(
              width: 327,
              height: 140,
              
              decoration: BoxDecoration(
                //добавление изображения в контейнере
                image:DecorationImage(image: AssetImage('assets/images/promo.jpg',),fit: BoxFit.cover),
                
                color: Colors.black,
                borderRadius: BorderRadius.circular(16)
            ),

            ),

        Container(
          decoration: BoxDecoration(
            // color: Colors.amber,
            
          ),
          child: Column(
            children: [
              Text('Promo'),
              Text('Buy one get one FREE')
            ],
      ),
    ),
      ],
        
    );
  }
}