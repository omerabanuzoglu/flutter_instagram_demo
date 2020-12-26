import 'package:flutter/material.dart';

class Istekler extends StatefulWidget {
  @override
  _IsteklerState createState() => _IsteklerState();
}

class _IsteklerState extends State<Istekler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Mesaj İstekleri"),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          mesajIstek(
            "https://cdn.pixabay.com/photo/2018/01/06/09/25/hijab-3064633_960_720.jpg",
            "Fatma Çözen",
            "Merhaba bişey sorabilirmiyim",
            "4g",
          ),
        ],
      ),
    );
  }

  ListTile mesajIstek(String resim, String isim, String mesaj, String sure) {
    return ListTile(
      title: Text(
        isim,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Row(
        children: [
          Text(
            mesaj,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
          SizedBox(width: 15),
          Text(
            sure,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
        ],
      ),
      leading: Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: NetworkImage(
              resim,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
