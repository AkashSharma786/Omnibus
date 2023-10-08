import 'package:flutter/material.dart';
import 'color_scheme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() => setState(() => _counter++);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: AppColorScheme.backgroundColor,
        appBar: AppBar(

          title: const Text('Flutter Demo Home Page',
            style: TextStyle(color: AppColorScheme.textColor),),
          backgroundColor: AppColorScheme.primaryColor,
           ),

        
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
                style: TextStyle(color: AppColorScheme.textColor),
              ),
              Text(
                '$_counter',
                style: const TextStyle(color: AppColorScheme.textColor, fontSize: 30  ),
              ),
            ],
          ),
        ),


        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColorScheme.primaryColor,
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      );
    
  }
}