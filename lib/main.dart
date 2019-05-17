import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Mabedex",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    fetchData();
  }

  fetchData() async {}

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
