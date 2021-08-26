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
    print('input build');
    return Scaffold(
      backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: const Text('add new quote'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "text:",
                  labelStyle: TextStyle(fontSize: 25,),
                  hintText: "please input the text of quote",
                ),
                controller: textController,
                //decoration: InputDecoration(hintText: '請輸入內容'),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "author:",
                  labelStyle: TextStyle(fontSize: 25,),
                  hintText: "please author the text of quote",
                ),
                controller: authorController,
                //decoration: InputDecoration(hintText: '請輸入作者'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(100,40),
                ),
                child: Text('ok', style: TextStyle(
                  fontSize: 20,)),
                //onPressed: btnEvent,
                onPressed: (){
                  print('press ok');
                  Navigator.pop(context,  {
                    'text' : textController.text,
                    'author':authorController.text
                  });
                  print('in input');
                  print(textController.text);
                },
              )
            ],
          ),
        ),

    );
  }

}