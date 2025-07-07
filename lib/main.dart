import 'package:counter/providers/CounterModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) {
        return CounterModel();
      },
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    // provider of variant
    final count = Provider.of<CounterModel>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Text("Count: ${count.count}", style: TextStyle(fontSize: 30)),
              ElevatedButton(
                onPressed: () {
                  count.increment();
                },
                child: Text("Increment"),
              ),

              ElevatedButton(
                onPressed: () {
                  count.reset();
                },
                child: Text("Reset"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
