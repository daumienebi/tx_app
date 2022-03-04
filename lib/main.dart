import 'package:flutter/material.dart';

import 'src/pages/pages.dart';

void main() {
  runApp(const AppState());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      initialRoute: 'tx',
      routes: {
        'tx' : (_) =>TeamXpectrumPage(),
        'livekoora' :(_)=> LiveKooraPage(),
    },

    );
  }
}

class AppState extends StatelessWidget{
  const AppState({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyApp();
  }

}