import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter.dart';
import 'new-page.dart';

void main() => runApp(ChangeNotifierProvider<Counter>(
    builder: (_) => Counter(0), child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/new': (context) => NewPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${counter.getCounter()}',
                style: Theme.of(context).textTheme.display1,
              ),
              RaisedButton(
                child: Text('Go'),
                onPressed: () {
                  Navigator.pushNamed(context, '/new');
                },
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: counter.increment,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ));
  }
}
