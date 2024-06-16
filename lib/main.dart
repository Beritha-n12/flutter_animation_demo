import 'package:flutter/material.dart';

<<<<<<< HEAD
void main() {
  runApp(const MyApp());
}
=======
void main() => runApp(const MyApp());
>>>>>>> 8fce5b442ad676a8fdc7667fe2a73ae5483c3031

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return const MaterialApp(
      home: AnimatedOpacityExample(),
    );
  }
}

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedOpacityExampleState createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  double _opacity = 1.0;

  void _toggleOpacity() {
    setState(() {
      _opacity = _opacity == 1.0 ? 0.0 : 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedOpacity Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: const Duration(seconds: 2),
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleOpacity,
              child: const Text('Toggle Opacity'),
            ),
          ],
=======
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AnimatedContainer Example'),
        ),
        body: const Center(
          child: AnimatedContainerDemo(),
>>>>>>> 8fce5b442ad676a8fdc7667fe2a73ae5483c3031
        ),
      ),
    );
  }
}
<<<<<<< HEAD
=======

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({super.key});

  @override
  // ignore: library_private_types_in_public_api
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
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          child: const Text(
            'Tap me!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isLarge = !_isLarge;
            });
          },
          child: const Text('Animate'),
        ),
      ],
    );
  }
}
>>>>>>> 8fce5b442ad676a8fdc7667fe2a73ae5483c3031
