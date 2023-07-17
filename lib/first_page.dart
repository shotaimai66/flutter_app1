import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  String inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter a search term',
            ),
            autofocus: true,
            onChanged: (text) {
              print('First text field: $text');
              inputText = text;
            },
          ),
          ElevatedButton(
            onPressed: () {
              print('デバック用：$inputText');
              Navigator.pushNamed(context, '/second_page',
                  arguments: {'inputText': inputText});
            },
            child: const Text('次へ'),
          )
        ]),
      ),
    );
  }
}
