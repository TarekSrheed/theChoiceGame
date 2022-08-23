import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo[400],
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('تطابق صورة'),
      ),
      body: const ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);
  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int liftbutton = 4;
  int rightbutton = 5;
  void changeimage() {
    liftbutton = Random().nextInt(8) + 1;
    rightbutton = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          liftbutton == rightbutton ? 'مبرووك لقد فزت' : 'حاول مرة اخرى',
          style: TextStyle(
            color: Colors.grey[50],
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(17.0),
          child: Row(
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      changeimage();
                    });
                  },
                  child: Image.asset('images/image-$liftbutton.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      changeimage();
                    });
                  },
                  child: Image.asset(
                    'images/image-$rightbutton.png',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
