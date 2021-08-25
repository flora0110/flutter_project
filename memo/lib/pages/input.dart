import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  //const Input({Key? key}) : super(key: key);

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  final TextEditingController myController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('input'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              TextField(
                controller: myController,
                decoration: InputDecoration(hintText: '請輸入...'),
              ),
              ElevatedButton(
                child: Text('印出輸入框內容'),
                //onPressed: btnEvent,
                onPressed: (){
                  Navigator.pushReplacementNamed(context, '/', arguments: {
                    'text' : myController.text
                  });
                },
              )
            ],
          ),
        ),

    );
  }
  void btnEvent() {
    if(myController.text==''){
      Navigator.pushReplacementNamed(context, '/home');
    }
    String t = myController.text;
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'text' : t
    });
    print(myController.text);
  }
}