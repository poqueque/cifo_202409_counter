import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.star),
        backgroundColor: Colors.amber,
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.star),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Has pulsat:',
            ),
            Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: _clear,
              onLongPress: _showError,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text("CLEAR"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }

  void _clear() {
    setState(() {
      _counter = 0;
    });
  }

  void _showError() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          "Has clicat massa fort",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
