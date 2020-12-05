import 'package:flutter/material.dart';
import 'dart:math';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
void main() {
  runApp(MyApp());
  class MyWidget extends StatelessWidget {
  Widget build(BuildContext context) {
  return new IconButton(
  // Use the MdiIcons class for the IconData
  icon: new Icon(MdiIcons.sword),
  onPressed: () { print('Using the sword'); }

}

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
