import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

class Home extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Home> {
  int q=0;
  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'Be yourself; everyone else is already taken'),
    Quote(author: 'Oscar Wilde', text: 'I have nothing to declare except my genius'),
    Quote(author: 'Oscar Wilde', text: 'The truth is rarely pure and never simple')
  ];
  @override//用這個build function而非 State<QuoteList> 的
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('My Quotes'),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
      ),
      body:Padding(
        padding: EdgeInsets.all(0.0),
        child :
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/blue-sky.jpeg'),
              //image: AssetImage('assets/background.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child :Column(
              children : <Widget>[
                SizedBox(height: 10.0),
                //Text('Quotes$q',
                //  style: TextStyle(
                //    letterSpacing: 10.0,
                //      fontSize: 28.0,
                //      fontWeight: FontWeight.bold
                //  ),
                //),
                Container(
                  child :Column(
                    //child: Text('aa'),
                    children: quotes.map((quote) => QuoteCard(
                        quote : quote,
                        delete: (){
                          setState(() {
                            quotes.remove(quote);
                          });
                        }
                    )).toList(),
                    //x[].map()依序丟x[]內的東東進function()
                    //.tolist turn it to list
                    //(quote) { return QuoteCard(quote : quote)}
                  ),
                ),
              ]
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context,'/input');
          //setState(() {
           // q+=1;
          //});
          //Navigator.pushNamed(context, '/location');
        },
        child:
        Icon(Icons.add),
      ),
    );
  }
}