import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  //const Input({Key? key}) : super(key: key);

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  final TextEditingController textController = new TextEditingController();
  final TextEditingController authorController = new TextEditingController();

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
                controller: textController,
                decoration: InputDecoration(hintText: '請輸入內容'),
              ),
              TextField(
                controller: authorController,
                decoration: InputDecoration(hintText: '請輸入作者'),
              ),
              ElevatedButton(
                child: Text('ok'),
                //onPressed: btnEvent,
                onPressed: (){
                  Navigator.pushReplacementNamed(context, '/', arguments: {
                    'text' : textController.text,
                    'author':authorController.text
                  });
                },
              )
            ],
          ),
        ),

    );
  }

}