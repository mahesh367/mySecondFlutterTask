import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

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

    final mybuttonkey = GlobalKey();
    final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView Example'),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            mainAxisSpacing: 10.0, // Spacing between rows
            crossAxisSpacing: 10.0, // Spacing between columns
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            // Build each grid item using the values from the array
            return Card(
              child: Center(
                child: Text(
                  items[index],
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            );
          },
        ),
      ),
    );
  }


}
