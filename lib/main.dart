import 'package:flutter/material.dart';
import './demo/drawer_demo.dart';
import './demo/bottomnavigation.dart';
import './demo/listview_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/form_demo.dart';
void main()=>runApp(App());

class App extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
             
  return MaterialApp( 
debugShowCheckedModeBanner: false,
initialRoute:'/form' ,
routes: {
  '/':(context)=>Home(),
  '/form':(context)=>FormDemo()
},
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
      length: 4,
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
      Tab(icon: Icon(Icons.directions_bike)),
      Tab(icon: Icon(Icons.local_florist)),

      
    ],
    ),
  ),
    body:TabBarView(
      
      children: <Widget>[
       ListViewDemo(),
       BasicDemo(),
       LayoutDemo(),
      ViewDemo()
      ],
     
      ),
      drawer: DrawerDemo(),
      bottomNavigationBar: BottomNavigationBarfun(),
            ),
    );
  }
}
