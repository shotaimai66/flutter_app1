import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  String inputText = '';

  SecondPage({Key? key, required this.inputText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(inputText),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('戻る'))
        ]),
      ),
    );
  }
}
