import 'package:flutter/material.dart';

import 'first_page.dart';
import 'second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {'/first_page': (context) => FirstPage()},
      initialRoute: '/first_page',
      onGenerateRoute: (settings) {
        if (settings.name == '/second_page') {
          print('settings.arguments: ${settings.arguments}');
          return MaterialPageRoute(
              builder: (context) =>
                  SecondPage(inputText: settings.arguments['inputText']));
        }
        return null;
      },
      home: FirstPage(),
    );
  }
}
