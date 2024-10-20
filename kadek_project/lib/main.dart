import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text("pembembing Akademik (PA)",style: TextStyle(fontSize:20),),
            ClipOval(
              child: Image.network("https://www.google.com/imgres?q=prabowo%20jpg&imgurl=https%3A%2F%2Fwww.benarnews.org%2Findonesian%2Fopini%2Fopini-prabowo-ke-as-10152020224352.html%2F201015_ID_Prabowo_1000.jpg%2F%40%40images%2Fimage&imgrefurl=https%3A%2F%2Fwww.benarnews.org%2Findonesian%2Fopini%2Fopini-prabowo-ke-as-10152020224352.html&docid=eF8yx_jrTAD_cM&tbnid=kJ2SgP7rBa34WM&vet=12ahUKEwjD1_T6jp2JAxWIUGwGHfLCAQsQM3oECBgQAA..i&w=1000&h=667&hcb=2&ved=2ahUKEwjD1_T6jp2JAxWIUGwGHfLCAQsQM3oECBgQAA",
              height:200,
              width: 200,
              fit: BoxFit.cover,
              ),
            ),
            Row(
              children: [
                Icon(Icon.person),
                Text("I Kadek Santika"),
              ],
            ),
            Row(
              children: [
                Icon(Icons.email),
                Text("kdksantika8@gmail.com"),
              ],
            ),
        ],
      )
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
