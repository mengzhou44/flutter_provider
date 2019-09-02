import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter.dart';

class NewPage extends StatelessWidget {
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('New Page'),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('${counter.getCounter()}'),
          RaisedButton(
              child: Text('Go Back'),
              onPressed: () {
                Navigator.pop(context);
              })
        ])));
  }
}
