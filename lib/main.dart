import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Welcome to Flutter',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
    Padding(
      padding: EdgeInsets.all(2),
      child: Image(
        image: NetworkImage('https://png.pngtree.com/png-vector/20190816/ourlarge/pngtree-film-logo-design-template-vector-isolated-illustration-png-image_1693431.jpg'),
        height: 300,
      ),

    ),
    Text('Hello World', style: TextStyle(
            fontSize: 32,
            color: Colors.black87,
          )),
    
      Icon(
              Icons.account_box,
              color: Colors.blue[500],
            ),
        
  ],
        
    );
  }
  
}


