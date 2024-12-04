import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/PromoWidget.dart';
import 'package:flutter_application_2/widgets/SearchWidget.dart';
import 'package:flutter_application_2/widgets/TextLocationWidget.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //контейнер который определяет градиентный фон 
      Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF313131),
            Color(0xFF111111),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          ),
        ),
        height: 280,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 68,),
          Center(
            //контейнер который определяет верхнюю часть экрана до промо
            child: Container(
              width: 327,
              height: 140,
              child: const Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Textlocationwidget(),
                    SizedBox(
                      height: 10,
                    ),
                    SearchWidget(),
                  ],
                )
              ),
            ),
          ),
          SizedBox(height: 24,),
          Container(
            child: Promowidget(),
            //add here promo
          )

        ],
      ),
      ],
    );
  }
}
