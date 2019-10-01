import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppBar Widget',
      home: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          leading: Icon(Icons.apps),
          title: const Text('AppBar Widget'),
          actions: [
            IconButton(
              icon: Icon(Icons.done),
              onPressed: () {
                scaffoldKey.currentState.hideCurrentSnackBar();
                scaffoldKey.currentState.showSnackBar(
                  const SnackBar(content: Text('Pressed done')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
