import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:mabedex/pokemon.dart';

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
  var url =
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

  PokeHub pokeHub;

  @override
  void initState() {
    super.initState();

    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    var decodedJson = jsonDecode(res.body);

    pokeHub = PokeHub.fromJson(decodedJson);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mabedex"),
          backgroundColor: Colors.cyan,
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: pokeHub.pokemon
              .map((poke) => Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Card(
                      child: Column(
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        width: 100.0,
                        decoration:
                            BoxDecoration(image: DecorationImage(image:NetworkImage(poke.img)),
                      )
                    ],
                  ))))
              .toList(),
        ),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.refresh),
            backgroundColor: Colors.cyan));
  }
}
