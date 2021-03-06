import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

class Home extends StatefulWidget {
  @override
  _State createState() => _State();
}
List<Quote> quotes = [
  Quote(author: 'Oscar Wilde', text: 'Be yourself; everyone else is already taken'),
  Quote(author: 'Oscar Wilde', text: 'I have nothing to declare except my genius'),
  Quote(author: 'Oscar Wilde', text: 'The truth is rarely pure and never simple')
];
class _State extends State<Home> {
  int q=0;

  //String data='';
  @override//用這個build function而非 State<QuoteList> 的
  Widget build(BuildContext context) {
    /*print('home build');
    print(context);
    final route = ModalRoute.of(context);
    if(route==null) print('is null');
    else{
      print('else');
      print(route);
      dynamic routeArgs = route.settings.arguments;
      if(routeArgs!=null){
        print(routeArgs["text"]);
        //if(routeArgs["text"]!=''){
          quotes.add(Quote(author: routeArgs["author"], text:routeArgs["text"]));
        //}
      }
    }
    print('in home');
    print(quotes);*/
    //var data = ModalRoute.of(context).settings.arguments;
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
                Expanded(
                  child: Container(
                    height: 600,
                    //padding: const EdgeInsets.all(8),
                    child :ListView(
                      children: quotes.map((quote) => QuoteCard(
                          quote : quote,
                          delete: (){
                            setState(() {
                              print('delete');
                              print(quotes);
                              quotes.remove(quote);

                              print(quotes);
                              print('over');
                            });
                          }
                      )).toList(),
                    )

                  ),
                ),
              ]
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
          dynamic result = await Navigator.pushNamed(context,'/input');
          if(result != null){
            setState(() {
              quotes.add(Quote(author: result["author"], text:result["text"]));
            });
          }
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