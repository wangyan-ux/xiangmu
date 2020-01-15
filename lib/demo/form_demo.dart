import 'package:flutter/material.dart';
class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Text('nihaoyi'),
      ),
      body: Theme(
      data:Theme.of(context).copyWith(
        primaryColor: Colors.black
      ),
      child: TextFiledDemo(),
      ),
    );
  }
}
class TextFiledDemo extends StatefulWidget {
  @override
  _TextFiledDemoState createState() => _TextFiledDemoState();
}

class _TextFiledDemoState extends State<TextFiledDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.center,  
        children: <Widget>[
        TextField(
          decoration: InputDecoration(  
            icon: Icon(Icons.subject),
            labelText: 'title',
            border: OutlineInputBorder(),
            hintText: ' wangyan' ,
            filled: true,

          ),
        )
        ],
      ),
    );
  }
}