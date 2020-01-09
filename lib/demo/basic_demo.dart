import 'package:flutter/material.dart';

class BasicDemo extends  StatelessWidget{

  @override
  Widget build(BuildContext context) {
   
return RichText(
  text: TextSpan(
    text: 'NIHAONG',
    style: TextStyle(
       fontSize: 16.0,
      color:Colors.black,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic
      
    ),
    children: [
      TextSpan(
        text: 'wangyan',
        style: TextStyle(
          fontSize: 16.0,
          fontWeight:FontWeight.bold,
          fontStyle: FontStyle.normal,
          color: Colors.blue
        )
      )
    ]
      
    
  ),
);
  }
}