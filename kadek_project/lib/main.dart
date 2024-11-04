import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Biodata'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fmedan.tribunnews.com%2F2022%2F08%2F31%2F7-contoh-gambar-yang-mudah-ditiru-berikut-tips-menggambarnya%3Fpage%3Dall&psig=AOvVaw0tq6CYxyD6wGbwLmAe2Fdn&ust=1730801813827000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCJCf1q25wokDFQAAAAAdAAAAABAE'),
              ),
              SizedBox(height: 20),
              Text(
                'i Kadek Santika',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text('NIM: 42230001'),
              Text('Prodi: FTI (Teknologi Informasi)'),
              Text('Deskripsi Diri: Saya mahasiswa Undiksha angkatan 2022.'),
            ],
          ),
        ),
      ),
    );
  }
}