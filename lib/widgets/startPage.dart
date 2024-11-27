import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/mainPage.dart';

class WordsWidget extends StatelessWidget {
  const WordsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(   
      width: MediaQuery.sizeOf(context).width,
      height:  MediaQuery.sizeOf(context).height,
      padding: const EdgeInsets.only(bottom: 30),     
        child: Column(  
          mainAxisAlignment:MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [      
            const Expanded(    
              child: SizedBox(),
            ),
            Image.asset('assets/images/image.png'),
            Container(
              width: 327,
              child: const Text(
                'Fall in Love with Coffee in Blissful Delight!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Soro',
                  color: Colors.white,
                  ),   
                  ),
            ),
            Container(
              width: 327,
              child: const Text(
                'Welcome to our cozy coffee corner, where every cup is a delightful for you.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(162, 162, 162, 1)),
                  ),
            ),
            const SizedBox(height: 25,),         
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(198, 124, 78, 100),         
                fixedSize: const Size(327, 56),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
              ),       
              onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MainPage()));
              },
              child: const Text(
              'Get Started',    
              style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              ),
              ),
            )
          ],
        ),
    );
  }
}