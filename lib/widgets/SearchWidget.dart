import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
           
          width: 259,
          height: 52,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(42, 42, 42, 100),
            borderRadius: BorderRadius.all(Radius.circular(15))),
          
          child: const Row(
             children: [
              Icon(
                size: 20,
                Icons.search,
                color: Color.fromRGBO(255, 255, 255, 100),),
              // SizedBox(width: 8),  // Add spacing between the icon and the TextField
              Expanded(              // Use Expanded to allow TextField to take available space
                child: TextField(
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(201, 200, 200, 100)
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 4),
                    border: InputBorder.none,
                    labelText: 'Search coffee',
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(201, 200, 200, 0.612)
                    ),
                    
        
                  ),
                ),
              ),
        
            ],
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(198, 124, 78, 1),
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          constraints: const BoxConstraints(maxHeight: 52,minWidth: 52),
          
          child: Center(
            child: Padding(
              
              padding: const EdgeInsets.all(16.0),
              child: SvgPicture.asset(
                
                'assets/icons/icon.svg',
                // width: 20,
                // height: 20,
                ),
            ),
          ),
        ),
      ],
    );
  }
}
