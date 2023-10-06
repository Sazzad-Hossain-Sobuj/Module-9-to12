import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Size Selector'),
        centerTitle: true,
      ),

      body: Center(
        child: Wrap(
          spacing: 20,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                onPressed: (){
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Small'),
                        content: Text('You click in small'),
                        iconColor: Colors.greenAccent,
                      ));
                  setState(() {});
                },
                child: Text('S')),
            ElevatedButton(
                onPressed: (){
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Medium'),
                        content: Text('You click in medium'),
                        iconColor: Colors.cyan,
                      ));
                  setState(() {});
                },
                child: Text('M')),
            ElevatedButton(
                onPressed: (){
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Large'),
                        content: Text('You click in large'),
                        iconColor: Colors.black,
                      ));
                  setState(() {});
                },
                child: Text('L')),
            ElevatedButton(
                onPressed: (){
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('XXL'),
                        content: Text('You click in XXL'),
                        iconColor: Colors.pink,
                      ));
                  setState(() {});
                },
                child: Text('Xl')),
            ElevatedButton(
                onPressed: (){
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('XXL'),
                        content: Text('You click in XXL'),
                        iconColor: Colors.orange,
                      ));
                  setState(() {});
                },
                child: Text('XXL')),
            ElevatedButton(
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('XXXL'),
                      content: Text('You click in XXXL'),
                      iconColor: Colors.teal,
                    ));
                  setState(() {});},

                child: Text('XXXL')),
          ],
        ),
      ),

    );
  }
}
