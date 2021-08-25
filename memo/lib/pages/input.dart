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
                onPressed: btnEvent,
              )
            ],
          ),
        ),

    );
  }
  void btnEvent() {
    print(myController.text);
  }
}

class AutocompleteBasicExample extends StatelessWidget {
  const AutocompleteBasicExample({Key? key}) : super(key: key);

  static const List<String> _kOptions = <String>[
    'aardvark',
    'bobcat',
    'chameleon',
  ];

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return _kOptions.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String selection) {
        print('You just selected $selection');
      },
    );
  }
}
