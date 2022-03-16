import 'package:flutter/material.dart';
import 'package:myapp/pages/task.dart';
import 'package:myapp/pages/myapp.dart';
import 'package:myapp/pages/menu.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => Profile(),
        '/task': (context) => Task(),
        '/myapp': (context) => MyApp(),
      },
      theme: ThemeData(
        platform: TargetPlatform.iOS,
      )

  ));
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('profile'),
          centerTitle: true,
          backgroundColor: Color(0xFFFF9000),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(30.0),
              color: Colors.grey[300],
              child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 60.0,
                      backgroundImage: NetworkImage('https://i.imgur.com/ainbX0w.jpg'),
                    ),
                    SizedBox(width: 50),
                    Text("Name\nskjklj@email.com.tw"),

                  ]
              ),
            ),
            const SizedBox(height: 10),

            //https://imgur.com/RU8bH5v
            const Image(
              image: NetworkImage("https://i.imgur.com/11ACPLw.jpg"),
              fit: BoxFit.fill,
            ),
          ],
        ),
        drawer: menu(),
        );
  }
}




