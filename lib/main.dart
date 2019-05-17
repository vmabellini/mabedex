import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Mabedex",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mabedex"),
          backgroundColor: Colors.cyan,
        ),
        body: Center(
          child: Text("Hello!"),
        ),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.refresh),
            backgroundColor: Colors.cyan));
  }
}
