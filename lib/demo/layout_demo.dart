import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

   return Container( 
    child: Column(  
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AspectRatio( 
        aspectRatio: 16.0/9.0,
        child: Container( 
          color: Colors.yellow,
        ),
        )
      ],
    ),
   );
  }
}
class IconBadge extends StatelessWidget{
  final IconData icon;
  final double size;
  IconBadge(this.icon,{this.size=32.0});
  @override
  Widget build(BuildContext context) {
    return Container( 
      child:Icon(icon,size: size,color:Colors.white) ,
      height: size + 60,
      width:size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0)
    );
   
  }
}