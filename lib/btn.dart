import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Btn extends StatefulWidget {
  String value = "";
  TextEditingController controll;

  Btn({super.key, required this.value, required this.controll});

  @override
  State<Btn> createState() => _BtnState();
}

class _BtnState extends State<Btn> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 3,
        vertical: 10,
      ),
      child: ElevatedButton(
        onPressed: () {
          widget.controll.text += "${widget.value}";
        },
        child: Text(
          '${widget.value}',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.amber[100]),
          padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
        ),
      ),
    );
  }
}
