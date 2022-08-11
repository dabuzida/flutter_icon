import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _text = 'bbbbbbbbbbbbbbbbbb';
  @override
  Widget build(BuildContext context) {
    print('build');
    return MaterialApp(
      title: 'Icon',
      home: Scaffold(
        backgroundColor: Colors.white60,
        appBar: AppBar(
          title: const Text('Icon'),
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Icon(Icons.block, color: Colors.red),
              SizedBox(height: 50),
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.green, width: 1)),
                child: SizedBox.shrink(),
              ),
              TextButton(
                  onPressed: () async {
                    print(1);
                    setState(() {
                      print(2);
                    });
                    print(3);
                    _text = 'xxxxxxxxxxxxxx';
                    print(4);
                    Future.delayed(Duration(seconds: 2), () {
                      print('delayed');
                      _text = 'tttttttttttt';
                      setState(() {
                        print(5);
                      });
                      print(6);
                    });
                    print(7);
                  },
                  child: Text(_text, style: TextStyle(fontSize: 50))),
            ],
          ),
        ),
      ),
    );
  }
}
