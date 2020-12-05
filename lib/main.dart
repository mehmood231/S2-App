import 'package:flutter/material.dart';
import 'dart:math';
import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
void main() {
  public class SimpleSplashScreen implements SplashScreen {
  @Override
  @Nullable
  public View createSplashView(
  @NonNull Context context,
  @Nullable Bundle savedInstanceState
  ) {
  // Return a new MySplashView without saving a reference, because it
  // has no state that needs to be tracked or controlled.
  return new MySplashView(context);
  }

  @Override
  public void transitionToFlutter(@NonNull Runnable onTransitionComplete) {
  // Immediately invoke onTransitionComplete because this SplashScreen
  // doesn't display a transition animation.
  //
  // Every SplashScreen *MUST* invoke onTransitionComplete at some point
  // for the splash system to work correctly.
  onTransitionComplete.run();
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
