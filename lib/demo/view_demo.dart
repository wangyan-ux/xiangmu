import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget{
  Widget _pageItemBuild(BuildContext context,int index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(  
         child: Image.network(posts[index].imageUrl,fit: BoxFit.cover,),
        ),
        Positioned( 
          bottom: 8.0,
          left: 8.0,
          child: Column(  
            mainAxisAlignment:MainAxisAlignment.start,
            children: <Widget>[
              Text( 
                posts[index].title
              ),
              Text(  
                posts[index].author
              )
            ],
          ),
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return   PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuild
    );
  }
}