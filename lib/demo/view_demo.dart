import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget{
  List<Widget> _buildTile(int lentgh){
    return List.generate(lentgh, (int index){
        return
       Container(  
         alignment: Alignment(0.0,0.0),
         color: Colors.yellow,
         child: Text( 
           'item',
           style: TextStyle(fontSize: 18.0,color: Colors.pink),
         ),
       );
    
    });
  }

 @override
  Widget build(BuildContext context) {
   return GridView.count(
     crossAxisCount: 3,
     crossAxisSpacing: 16.0,
     mainAxisSpacing: 16.0,
     children: _buildTile(100),
   );
  }
}