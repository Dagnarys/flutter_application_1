import 'package:flutter/material.dart';
class Promowidget extends StatelessWidget {
  const Promowidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 327,
          height: 140,
          decoration: BoxDecoration(
              //добавление изображения в контейнере
              image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/promo.jpg',
                  ),
                  fit: BoxFit.cover),
              color: Colors.black,
              borderRadius: BorderRadius.circular(16)),
        ),
        Positioned(
          left: 24,
          top: 13,
          child: Container(
            constraints: BoxConstraints.tight(const Size(204, 114)),
            alignment: Alignment.topLeft,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FirstTextPromoWidget(),
                SizedBox(
                  height: 8,
                ),
                SecondTextPromoWidget()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
class FirstTextPromoWidget extends StatelessWidget {
  const FirstTextPromoWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 26,
        width: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: const Color(0xFFED5151),
            borderRadius: BorderRadius.circular(8)),
        child: const Text(
          'Promo',
          style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ));
  }
}
class SecondTextPromoWidget extends StatelessWidget {
  const SecondTextPromoWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 18,
          ),
          //полоска 1
          Container(
            color: Colors.black,
            width: 200,
            height: 27,
          ),
          const SizedBox(
            height: 12,
          ),
          //полоска 2
          Container(
            color: Colors.black,
            width: 149,
            height: 23,
          ),
        ],
      ),
      Container(
        height: 80,
        padding: const EdgeInsets.only(left: 5),
        child: const Text(
          'Buy one get one FREE',
          style: TextStyle(
            decorationThickness: 1,
            decoration: TextDecoration.none,
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w600,
            fontSize: 32,
            height: 1.2,
            fontFamily: 'Sora'
          ),
        ),
      ),
    ]);
  }
}