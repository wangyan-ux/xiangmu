import 'package:flutter/material.dart';

class BasicDemo extends  StatelessWidget{

  @override
  Widget build(BuildContext context) {
   
return Container(
color:Colors.grey[100],
child: Row(
  children: <Widget>[
    Container(
      child: Icon(Icons.pool,size: 32.0,color: Colors.white,),
      padding: EdgeInsets.all(8.0),
      color: Color.fromRGBO(3, 54, 255, 1.0),
      margin: EdgeInsets.all(5.0)
    ),
    Container(
      child: Icon(Icons.pool,size: 32.0,color: Colors.white,),
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(5.0),
      width: 90.0,
      height:90.0,
      decoration: BoxDecoration(
         
       border: Border.all(
       color: Colors.black,
        width: 8,
    ),
    borderRadius: BorderRadius.circular(12),

      ),
    )
  ],
),

);

  }
}