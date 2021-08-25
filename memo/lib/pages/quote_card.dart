import 'package:flutter/material.dart';
import 'quote.dart';
class QuoteCard extends StatelessWidget {
  final Quote quote;
  final void Function() delete;
  QuoteCard({required this.quote,required this.delete });
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.blue[100],
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child : Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children : <Widget>[
              Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,//對其方式:佔滿縱向
              children: <Widget>[
                Text(
                  quote.text,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 6.0),
                Text(
                  quote.author,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(height: 8.0,),
              ],
              ),
              SizedBox(
                width: 80,
                //size: Size(56, 56),
                //height : 20,
                // child: ClipRect(
                child: Material(
                  color: Colors.blue[50],
                  child: InkWell(
                    onTap: delete,
                    child :
                    Row(
                      mainAxisAlignment : MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.delete), // icon
                        Text("delete"), // text
                      ],
                    ),
                  ),
                ),
              ),
            ],
            ),
          ),
        );
  }
}