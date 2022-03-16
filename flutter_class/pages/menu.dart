import 'package:flutter/material.dart';
import 'package:myapp/pages/task.dart';
import 'package:myapp/pages/myapp.dart';

class menu extends StatelessWidget {
  const menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 250,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFFFF9000),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CircleAvatar(
                        radius: 60.0,
                        backgroundImage: NetworkImage('https://github.com/Edmond-Yang/Flutter_Widget/blob/master/person.jpg?raw=true'),
                      ),
                      SizedBox(height: 20),
                      Text("Name",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text("skjklj@email.com.tw",),

                    ]
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.perm_identity_outlined,
                size: 30,
              ),
              title: const Text('profile',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.of(context).pushNamed('/');
              },
            ),
            ListTile(
                leading: Icon(Icons.task_outlined,
                  size: 30,
                ),
                title: const Text('task',
                  style: TextStyle(fontSize: 20),
                ),

                onTap: (){
                  Navigator.of(context).pushNamed('/task');
                }
            ),

          ],
        )
    );
  }
}
