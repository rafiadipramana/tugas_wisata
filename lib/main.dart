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
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  final String title = 'Grenjengan Sewu';
  final String location = 'Pati, Jawa Tengah';
  final String description =
      'Air Terjun Grenjengan Sewu berada di tengah-tengah keindahan alam yang hijau nan asri,membuat orang menjulukinya keindahan alam yang tersembunyi. Pohon-pohon yang rindang, angin sepoi-sepoi, serta air sungai yang mengekor begitu indah dan cantik cocok untuk kamu nikmati untuk bersantai. Bersantai ditengah-tangah romantisme alam memang tiada duanya, ini akan menjadi pengalaman yang sangat berharga dan tidak akan pernah terlupakan.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Objek Wisata'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('images/grenjengan_sewu.jpg',
            height: 250,
            width: 412,
            fit: BoxFit.fill
          ),
          Container(height: 15,),
          Row(
            children: [
              Container(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(this.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(this.location,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    ),
                  )
                ],
              ),
              Container(
                width: 100,
              ),
              Icon(
                Icons.star,
                size: 30,
                color: Colors.orange,),
              Text(
                '4',
                style: TextStyle(
                  fontSize: 18
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              this.description,
              style: TextStyle(
                fontSize: 18
              ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
