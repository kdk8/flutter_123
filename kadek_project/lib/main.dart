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
            alignment: Alignment.centerLeft, // Menempatkan teks di sebelah kiri
            child: Text(
              "Pembimbing Akademik (PA)",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ClipOval(
            child: Image.network(
              "https://www.google.com/imgres?q=gambar%20format%20jpg&imgurl=https%3A%2F%2Ffileinfo.com%2Fimg%2Fss%2Fxl%2Fjpg_44-2.jpg&imgrefurl=https%3A%2F%2Ffileinfo.com%2Fextension%2Fjpg&docid=0OJPsWXk41YY4M&tbnid=c9N72fqs210o-M&vet=12ahUKEwjcwoTwzp6JAxUoR2wGHa7jGIEQM3oFCIABEAA..i&w=2400&h=1599&hcb=2&ved=2ahUKEwjcwoTwzp6JAxUoR2wGHa7jGIEQM3oFCIABEAA",
              height: 200, // Disesuaikan agar proporsional dengan bentuk bulat
              width: 200,
              fit: BoxFit.cover, // Menyesuaikan gambar dengan bingkai bulat
            ),
          ),
          Row(
            children: [
              Icon(Icons.person),
              Text(" I Kadek Santika"),
            ],
          ),
          Row(
            children: [
              Icon(Icons.email),
              Text("kadeksantika1010@gmail.com"),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
     ),
);
}
}