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
  final String title = 'Rafi Adi Pramana';
  final String location = 'Pati, Jawa Tengah';
  final String description =
      'Saya adalah seorang mahasiswa aktif \n Prodi D3-Teknik Informatika, \nJurusan Teknik Elektro, \nPoliteknik Negeri Semarang. \n \n MOTTO : \n "Ingin tidur tapi terlanjur ngopi"';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blue[900],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(height: 20,),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset('images/rafi.jpg',
              height: 250,
              width: 250,
              fit: BoxFit.fill
            ),
          ),
          Container(height: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(this.title,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 30,
                color: Colors.blue[900],
                fontWeight: FontWeight.w700
                ),
              ),
              Text(this.location,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                color: Colors.grey,
                fontWeight: FontWeight.w300
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              this.description,
              style: TextStyle(
                fontSize: 18
              ),
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
