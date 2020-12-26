import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Profil",
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
                      "https://scontent.fesb4-2.fna.fbcdn.net/v/t1.0-9/121287888_1027492584347297_2899465042897488268_n.jpg?_nc_cat=104&ccb=2&_nc_sid=09cbfe&_nc_ohc=V4W-SitVg2oAX__OXsJ&_nc_ht=scontent.fesb4-2.fna&oh=422064d9fc84749684e2af3d325b7443&oe=600B600C",
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
                    "Ömer POYRAZ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Ankara",
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
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                "Profili Düzenle",
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
          SizedBox(height: 20),
          Container(
            height: 300,
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://scontent.fesb4-1.fna.fbcdn.net/v/t1.0-9/131297885_1077131159383439_323980196517622686_n.jpg?_nc_cat=110&ccb=2&_nc_sid=8bfeb9&_nc_ohc=yyj8DAhya-YAX_dTufK&_nc_ht=scontent.fesb4-1.fna&oh=33e455ceb410ce7d84e7920ddfc01703&oe=600DFFF7",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://scontent.fesb4-2.fna.fbcdn.net/v/t1.0-9/131204108_1075165872913301_687545870396795161_n.jpg?_nc_cat=106&cb=846ca55b-311e05c7&ccb=2&_nc_sid=8bfeb9&_nc_ohc=WG4yTfl2rucAX8xEkpc&_nc_ht=scontent.fesb4-2.fna&oh=8faf06ea556e319046dbc40483d42ff6&oe=600CD44A",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://scontent.fesb4-2.fna.fbcdn.net/v/t1.0-9/125322803_1055011858262036_6361670862553274799_n.jpg?_nc_cat=109&ccb=2&_nc_sid=8bfeb9&_nc_ohc=UUZeI85U-t8AX-HocKg&_nc_ht=scontent.fesb4-2.fna&oh=cedec557c382e8b58201b1ce780bf4d0&oe=600B54D2",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://scontent.fesb4-2.fna.fbcdn.net/v/t1.0-9/86707644_856720801424477_1849691875783475200_o.jpg?_nc_cat=106&ccb=2&_nc_sid=8bfeb9&_nc_ohc=MBlW95GD0hIAX9zZZY8&_nc_ht=scontent.fesb4-2.fna&oh=894ba2d9c8bb936c49e7b687bf382347&oe=600D4170",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
