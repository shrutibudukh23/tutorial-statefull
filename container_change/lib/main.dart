import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Color App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ContainerColorApp(),
    );
  }
}

class ContainerColorApp extends StatefulWidget {
  const ContainerColorApp({super.key});

  @override
  State<ContainerColorApp> createState() => _ContainerColorAppState();
}

class _ContainerColorAppState extends State<ContainerColorApp> {
  bool colorchange = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Color App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          color: (colorchange) ? Colors.amber : Colors.blue,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (colorchange) {
            colorchange = false;
          } else {
            colorchange = true;
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}