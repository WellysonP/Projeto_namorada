import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  List locais = [
    "Hivila Pontes",
    "Perto da namorada",
    "Coração da morena",
    "Com a boyzinha",
    "Do lado da gata",
    "Com o meu amor",
    "Com minha gata",
    "Com o amor da minha vida",
    "Com minha engenheira",
    "Na casa da namorada"
  ];

  String randomTexto = "";

  void atualizarTela() {
    setState(() {
      randomTexto = locais[new Random().nextInt(locais.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Onde desejo ficar?",
              style: Theme.of(context).textTheme.headline4,
            ),
            FlatButton(
                onPressed: atualizarTela,
                color: Colors.red,
                child: Text('Clique aqui para saber!')),
            Text(
              '$randomTexto',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      //), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
