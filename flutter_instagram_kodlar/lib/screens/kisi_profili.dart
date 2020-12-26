import 'package:flutter/material.dart';

class KisiProfil extends StatefulWidget {
  final String kullaniciAdi;
  final String resim;
  final String isimSoyisim;
  final String hakkinda;
  final String gonderi;
  final String takipci;
  final String takip;

  const KisiProfil(
      {Key key,
      this.kullaniciAdi,
      this.resim,
      this.isimSoyisim,
      this.hakkinda,
      this.gonderi,
      this.takipci,
      this.takip})
      : super(key: key);

  @override
  _KisiProfilState createState() => _KisiProfilState();
}

class _KisiProfilState extends State<KisiProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          widget.kullaniciAdi,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.black,
        actions: [
          Icon(
            Icons.add,
            size: 35,
          ),
          SizedBox(width: 20),
          Icon(
            Icons.view_headline,
            size: 35,
          ),
          SizedBox(width: 20)
        ],
      ),
      body: ListView(
        children: [
          Row(
            children: [
              //profilResmi
              Container(
                margin:
                    EdgeInsets.only(left: 15, right: 30, top: 20, bottom: 10),
                width: 85,
                height: 85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: NetworkImage(
                      widget.resim,
                    ),
                  ),
                ),
              ),
              //gonderi
              Column(
                children: [
                  Text(
                    "4",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    "Gönderi",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 25),
              //takipci
              Column(
                children: [
                  Text(
                    "140",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    "Takipçi",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 25),
              //takip
              Column(
                children: [
                  Text(
                    "49",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    "Takip",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
          //isim, hakkimda
          Row(
            children: [
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.isimSoyisim,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    widget.hakkinda,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          //profil düzenle
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    "Takip",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  margin: EdgeInsets.only(left: 10, right: 10),
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    "Mesaj",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  margin: EdgeInsets.only(left: 10, right: 10),
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          //resimler-(gönderiler)
          Container(
            height: 300,
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
