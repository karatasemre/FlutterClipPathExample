import 'package:clip_path_example/my_custom_clipper.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Positioned(
            child: ClipPath(
              clipper: MyCustomClipper(),
              child: Container(
                color: Colors.blue,
                width: double.infinity,
                height: 300.0,
              ),
            ),
          ),
          Positioned(
            left: 12,
            top: 230,
            height: 120,
            width: 120,
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://www.beliefnet.com/columnists//truthsyoucanuse/files/2013/05/stress-free.jpg"),
            ),
          ),
        ],
      ),
    );
  }
}
