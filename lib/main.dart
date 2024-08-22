import 'package:flutter/material.dart';
import 'package:woo/btn.dart';
import 'package:dart_eval/dart_eval.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    // Dispose the controller when the widget is disposed
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          double result = eval(_controller.text.toString());
          _controller.clear();
          _controller.text = result.toString();
        },
        child: Text(
          '=',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        margin: EdgeInsets.all(100),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              style: TextStyle(fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Btn(value: '1', controll: _controller),
                      Btn(value: '2', controll: _controller),
                      Btn(value: '3', controll: _controller),
                      Btn(value: '+', controll: _controller),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Btn(value: '4', controll: _controller),
                      Btn(value: '5', controll: _controller),
                      Btn(value: '6', controll: _controller),
                      Btn(value: '-', controll: _controller),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Btn(value: '7', controll: _controller),
                      Btn(value: '8', controll: _controller),
                      Btn(value: '9', controll: _controller),
                      Btn(value: '*', controll: _controller),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Btn(value: '0', controll: _controller),
                      Btn(value: '/', controll: _controller),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
