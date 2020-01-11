import 'package:flutter/material.dart';

class BasicDemo extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
return Container(
decoration: BoxDecoration(
  image: DecorationImage(
    image: NetworkImage('https://resources.ninghao.org/images/candy-shop.jpg'),
    alignment: Alignment.topCenter,
    fit: BoxFit.cover,
    colorFilter: ColorFilter.mode(Colors.indigoAccent[400].withOpacity(0.5), BlendMode.hardLight)
 )
  ),
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
  
    boxShadow: [
      BoxShadow(
       offset: Offset(0.0,12.0),
       color: Color.fromRGBO(16, 20, 188, 1.0),
       blurRadius: 25.0,
       spreadRadius: 3.0,

      )
      
    ],
     shape:BoxShape.circle,
     gradient: LinearGradient(
       colors:[
         Color.fromRGBO(7, 102, 255, 1.0),
         Color.fromRGBO(7, 102, 6, 1.0)
       ],
       begin: Alignment.topCenter,
       end: Alignment.bottomCenter
        )

      ),
    )
  ],
),

);

  }
}