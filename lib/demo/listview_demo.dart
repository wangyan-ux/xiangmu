import 'package:flutter/material.dart';
import 'package:wangyan_flutter/demo/luyou_demo.dart';
import '../model/post.dart';
import '../demo/luyou_demo.dart';
 
class ListViewDemo extends StatelessWidget{
  Widget _listItemBuild (BuildContext context ,int index){
    return Stack(
    children: <Widget>[
      Container(
      color:Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          AspectRatio( 
            aspectRatio: 16/9,
            child:Image.network(posts[index].imageUrl,fit: BoxFit.cover) ,
          ),
          
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
            ),
            Text(
              posts[index].author,
              style: Theme.of(context).textTheme.subhead,
            ),
            SizedBox(height: 16.0)
          
        ]
        
     ) 
     ),
     Positioned.fill(
       child: Material( 
         color: Colors.transparent,
         child: InkWell( 
           splashColor: Colors.white.withOpacity(0.3),
           highlightColor: Colors.white.withOpacity(0.1),
           onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(  
                builder: (context)=> PostShow(post: posts[index]),
              )
            );
             },
         ),
       ),
     )
    ],
    
    
    );
  }
  @override
  Widget build(BuildContext context) {
   
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuild,
      );
  }
}
