import 'package:flutter/material.dart';

void main() {
  runApp(const flowerApp());
}

class flowerApp extends StatefulWidget {
  const flowerApp({super.key});

  @override
  State<flowerApp> createState() => _flowerAppState();
}

class _flowerAppState extends State<flowerApp> {
  int _counter = 0;

  List<String> flowerList = <String>[
    "https://cdn.pixabay.com/photo/2018/04/03/22/40/rose-3288314_640.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkjlnUaDE_07I269oFRnjNygQfFdVw8ipB-Q&s",
    "https://i.pinimg.com/236x/f5/b1/23/f5b123b0f8173cd42201cbb028389d09.jpg",
    "https://i.pinimg.com/736x/a2/be/05/a2be0553de9c0d6030560c9f4fb62128.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3KLsKw0jLKi6EOWlMs2QnOvqlopxW-8i54w&s",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flowers',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("flower App"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                flowerList[_counter],
                height: 300,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              Text(
                'List of flower  ${_counter + 1} of ${flowerList.length}',
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  if (_counter > 0) {
                    _counter--;
                  } else {
                    _counter = flowerList.length - 1;
                  }
                });
              },
              tooltip: 'Last flower',
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 280),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  if (_counter < flowerList.length - 1) {
                    _counter++;
                  } else {
                    _counter = 0;
                  }
                });
              },
              tooltip: 'Next flower',
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}