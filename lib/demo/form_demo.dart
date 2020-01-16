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
      child: TextFormFiledDemo(),
      ),
    );
  }
}
class TextFiledDemo extends StatefulWidget {
  @override
  _TextFiledDemoState createState() => _TextFiledDemoState();
}

class _TextFiledDemoState extends State<TextFiledDemo> {
  final _textEditingController=TextEditingController();
  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
  @override
  void initState() {
    super.initState();
    //_textEditingController.text='hii';
    _textEditingController.addListener(
      (){
        debugPrint('${_textEditingController.text}');
      }
    );
  }
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
          controller: _textEditingController,
        )
        ],
      ),
    );
  }
}

class TextFormFiledDemo extends StatefulWidget {
  @override
  _TextFormFiledDemoState createState() => _TextFormFiledDemoState();
}

class _TextFormFiledDemoState extends State<TextFormFiledDemo> {
  final _formkey=GlobalKey<FormState>();
  String username,password; 
  bool _autovalidate=false;

  void submitRegisterForm(){
     if( _formkey.currentState.validate())
      { _formkey.currentState.save();
        debugPrint(username);
       debugPrint(password);
       Scaffold.of(context).showSnackBar(
        SnackBar( 
          content: Text('正在注册...'),
        )
       );
      }
    else{
      setState(() {
        _autovalidate=true;
      });
    }
  }
  String validatorUserName(value){
   if(value.isEmpty){
     return '用户名不能为空';
   }
   return null;
  }
  String validatorPassWord(value){
   if(value.isEmpty){
     return '密码不能为空';
   }
   return null;
  }
  @override
  Widget build(BuildContext context) {
    return Form( 
          key: _formkey,
          child:
           Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        TextFormField(
            decoration: InputDecoration(  
              labelText: 'Username',
              helperText: 'nihsng ',
            ),
            onSaved: (value){username=value;},
            validator: validatorUserName,
            autovalidate: _autovalidate,

          ),
      
           TextFormField(
             obscureText: true,
            decoration: InputDecoration(  
              labelText: 'Password',
              helperText: 'nihsng ',
            ),
            onSaved: (value){password=value;},
            validator: validatorPassWord,
            autovalidate: _autovalidate,

           ),
           SizedBox(height: 32.0,),
           Container(
             width: double.infinity,
             child: RaisedButton( 
               child: Text('Register',style:TextStyle(color: Colors.white)),
               onPressed:submitRegisterForm,
               
               color: Colors.blue,
             ),
          
           )
        ],
      ),
     
    );
  }
}