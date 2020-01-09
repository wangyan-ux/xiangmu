import 'package:flutter/material.dart';

class BottomNavigationBarfun extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return _BottomNavigation();
  }
}

class _BottomNavigation extends State<BottomNavigationBarfun>{
  int _selectIndex=0;
  void _onTapHandler(int index){
    setState(() {
      _selectIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return BottomNavigationBar(
       currentIndex: _selectIndex,
      onTap: _onTapHandler,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('Explore')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('history')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('list')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('my')
          )
               ],
      );
  }
}