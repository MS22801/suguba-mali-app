import 'package:flutter/material.dart';

void main() {
  runApp(SugubaApp());
}

class SugubaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SUGUBA MALI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final ads = [
    {
      "title": "Voiture Toyota",
      "price": "3,500,000 XOF"
    },
    {
      "title": "Téléphone Samsung",
      "price": "200 USD"
    },
    {
      "title": "Appartement Bamako",
      "price": "25,000 EUR"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SUGUBA MALI"),
      ),
      body: ListView.builder(
        itemCount: ads.length,
        itemBuilder: (context, index) {
          var ad = ads[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(ad["title"]!),
              subtitle: Text(ad["price"]!),
            ),
          );
        },
      ),
    );
  }
}
