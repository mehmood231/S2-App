import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/material.dart';
void main() {
  import 'package:flutter/material.dart';

  void main() => runApp(MyApp());

  class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  title: appTitle,
  home: MyHomePage(title: appTitle),
  );
  }
  }
  class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(title: Text(title)),
  body: Center(child: Text('My Page!')),
  drawer: Drawer(

  child: ListView(
  padding: EdgeInsets.zero,
  children: <Widget>[
  DrawerHeader(
  child: Text('Drawer Header'),
  decoration: BoxDecoration(
  color: Colors.blue,
  ),
  ),
  ListTile(
  title: Text('Item 1'),
  onTap: () {

  Navigator.pop(context);
  },
  ),
  ListTile( title: Text('Item 2'),
  onTap: () {

  Navigator.pop(context);
  },
  ),
  ],
  ),
  ),
  );
  }
  }
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class StatefulWidget {
}
import 'dart:io';

@override
Widget build(BuildContext context) {
  return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new ... (...),
  floatingActionButton: new FloatingActionButton(
  onPressed: ()=> exit(0),
  tooltip: 'Close app',
  child: new Icon(Icons.close),
  ),
  );
}
class _DicePageState extends State<DicePage> {
  var x =1;
  void changeFace(){
    setState(() {
      x = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Text(
                  'Roll-on-Dice',
                  style: TextStyle(
                    fontFamily: 'MetalMania',
                    fontSize: 80,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 92),
                  child: GestureDetector(
                    child: Image(
                      image: AssetImage('images/dice$x.png'),
                      height: 300,
                    ),
                    onTap: (){
                      changeFace();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
