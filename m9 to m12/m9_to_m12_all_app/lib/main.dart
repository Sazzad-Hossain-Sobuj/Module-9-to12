import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Select Sizer'),
          centerTitle: true,
        ),
        body: Center(
          child: ButtonList(),
        ),
      ),
    );
  }
}

class ButtonList extends StatefulWidget {
  @override
  _ButtonListState createState() => _ButtonListState();
}

class _ButtonListState extends State<ButtonList> {
  Map<String, Color> buttonColors = {
    'S': Colors.blue,
    'M': Colors.blue,
    'L': Colors.blue,
    'XL': Colors.blue,
    'XXL': Colors.blue,
    'XXXL': Colors.blue,
  };

  void showSnackbar(String size) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Selected size: $size'),
      ),
    );
  }

  void changeColor(String size) {
    setState(() {
      buttonColors[size] = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      children: buttonColors.keys.map((size) {
        return ElevatedButton(
          onPressed: () {
            showSnackbar(size);
            changeColor(size);
          },
          child: Text(size),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(buttonColors[size]!),
          ),
        );
      }).toList(),
    );
  }
}
