import 'package:flutter/material.dart';
import './demo/drawer_demo.dart';
import './demo/bottomnavigation.dart';
import './demo/listview_demo.dart';

void main()=>runApp(App());
  


class App extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
             
  return MaterialApp(
    debugShowCheckedModeBanner: false,
home:Home(),
theme: ThemeData(
primarySwatch: Colors.blue,
highlightColor: Color.fromRGBO(255, 255, 255, 0.5),

)
    );
  }

}

class Home extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 3,
      child: Scaffold(

    backgroundColor: Colors.grey[100],
    appBar:AppBar(
      
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search),
        tooltip: 'search',
        onPressed: ()=>debugPrint('你好'),
      )
    ],
    title:Text('发票池'),
    elevation: 0.0,
    bottom: TabBar(
       unselectedLabelColor:Colors.black38,
       indicatorColor: Colors.yellow,
       indicatorSize: TabBarIndicatorSize.label,
       indicatorWeight: 1.5,
      tabs: <Widget>[
      Tab(icon: Icon(Icons.local_florist)),
      Tab(icon: Icon(Icons.change_history)),
      Tab(icon: Icon(Icons.directions)),
    ],
    ),
  ),
    body:TabBarView(
      
      children: <Widget>[
       ListViewDemo(),
        Icon(Icons.change_history,size:128.0,color:Colors.black12),
        Icon(Icons.directions,size: 128.0,color:Colors.black12)
      ],
     
      ),
      drawer: DrawerDemo(),
      bottomNavigationBar: BottomNavigationBarfun(),
            ),
    );
  }
}
