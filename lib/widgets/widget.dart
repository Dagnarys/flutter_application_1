import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color:Colors.blue,
        child: Container(
          color: Colors.blue,
          child: CustomMultiChildLayout(
          delegate: OwnMultiChildLayoutDelegate() ,
          children: [
            LayoutId(
              id:1,
              child: Text('left'),
            ),
            LayoutId(
              id:2,
              child: Text('middle'),
            ),
            LayoutId(
              id:3,
              child: Text('right'),
            ),
          ],
            
          
        
        
        ),
        ),
       
      ),
    );
  }
}



class OwnMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
  Size getSize(BoxConstraints constraints) => Size(constraints.biggest.width,100);
  
  @override
  void performLayout(Size size) {
   if (hasChild(1)&&hasChild(2)&&hasChild(3)){

    final minOtherElementWidth = 50;

    final firstElementMaxWidth = size.width -minOtherElementWidth*2;
    final firstElementSize = layoutChild(
      1, 
      BoxConstraints.loose(Size(firstElementMaxWidth,size.height))
    );

    final thirdElementMaxWidth = size.width - firstElementSize.width - minOtherElementWidth;
    final thirdElementSize = layoutChild(
      3, 
      BoxConstraints.loose(Size(thirdElementMaxWidth,size.height))
    );

    final secondElementMaxWidth = size.width - firstElementSize.width - thirdElementSize.width;
    final secondElementSize = layoutChild(
      2, 
      BoxConstraints.loose(Size(secondElementMaxWidth,size.height))
    );
   
    final firstElementYOffset = size.height/2 - firstElementSize.height/2;
    positionChild(1, Offset(0,firstElementYOffset));

    final secondElementYOffset = size.height/2 - secondElementSize.height/2;
    positionChild(2, Offset(100,secondElementYOffset));

    final thirdElementYOffset = size.height/2 - thirdElementSize.height/2;
    positionChild(3, Offset(300,thirdElementYOffset));
   }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return true; 
  }

}