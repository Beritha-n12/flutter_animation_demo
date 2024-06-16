import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AnimatedContainer Example'),
        ),
        body: Center(
          child: AnimatedContainerDemo(),
        ),
      ),
    );
  }
}

class AnimatedContainerDemo extends StatefulWidget {
  @override
  _AnimatedContainerDemoState createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  bool _isLarge = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedContainer(
          width: _isLarge ? 200.0 : 100.0,
          height: _isLarge ? 200.0 : 100.0,
          color: _isLarge ? Colors.blue : Colors.red,
          alignment: Alignment.center,
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          child: Text(
            'Tap me!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
        SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isLarge = !_isLarge;
            });
          },
          child: Text('Animate'),
        ),
      ],
    );
  }
}
