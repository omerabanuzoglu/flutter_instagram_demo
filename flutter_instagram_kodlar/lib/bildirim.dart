import 'package:Instagram/screens/anaSayfa.dart';
import 'package:Instagram/screens/kesfet.dart';
import 'package:Instagram/screens/magaza.dart';
import 'package:Instagram/screens/profil.dart';
import 'package:Instagram/screens/reels.dart';
import 'package:flutter/material.dart';

class Bildirim extends StatefulWidget {
  @override
  _BildirimState createState() => _BildirimState();
}

class _BildirimState extends State<Bildirim> {
  int seciliSayfa = 2;

  void sayfaDegistir(int index) {
    setState(() {
      seciliSayfa = index;
    });
  }

  // ignore: missing_return
  Widget sayfaGoster(int seciliSayfa) {
    if (seciliSayfa == 0) {
      return AnaSayfam();
    } else if (seciliSayfa == 1) {
      return Kesfet();
    } else if (seciliSayfa == 2) {
      return Reels();
    } else if (seciliSayfa == 3) {
      return Magaza();
    } else if (seciliSayfa == 4) {
      return Profil();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            "Hareketler",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          children: [
            //takip istekleri
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  "Takip istekleri",
                  style: TextStyle(fontSize: 21, color: Colors.white),
                ),
                subtitle: Text(
                  "İstekleri onayla veya yok say",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 16,
                  ),
                ),
                leading: Container(
                  padding: EdgeInsets.all(11),
                  child: Icon(
                    Icons.person_add,
                    color: Colors.white,
                    size: 30,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(),
            Container(
              padding: EdgeInsets.only(left: 16, top: 15),
              child: Text(
                "Bugün",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20),
            takipKarti(
              "https://scontent.fesb4-1.fna.fbcdn.net/v/t1.0-9/26734264_1964803813772202_8158589869882488781_n.jpg?_nc_cat=107&ccb=2&_nc_sid=19026a&_nc_ohc=6ikaGpWZtJcAX-itw17&_nc_ht=scontent.fesb4-1.fna&oh=bf1a6ecf64e800661556d831d9a75303&oe=600B8EEA",
              "alimcanklf",
              "Takip",
              Colors.black,
            ),
            begeniKarti(
              "yusakargali",
              "https://scontent.fesb4-2.fna.fbcdn.net/v/t31.0-8/11536433_797287180386140_55436595205144821_o.jpg?_nc_cat=108&ccb=2&_nc_sid=2c4854&_nc_ohc=PAJ489bmal4AX_NJy0-&_nc_ht=scontent.fesb4-2.fna&oh=6042aae1bac249ae21ec873dd7269676&oe=600C0D1E",
              "https://scontent.fesb4-2.fna.fbcdn.net/v/t1.0-9/131204108_1075165872913301_687545870396795161_n.jpg?_nc_cat=106&cb=846ca55b-311e05c7&ccb=2&_nc_sid=8bfeb9&_nc_ohc=WG4yTfl2rucAX-_2wQk&_nc_ht=scontent.fesb4-2.fna&oh=166aa694f78c5a3e9adfca26cf577c88&oe=600CD44A",
            ),
            Container(
              padding: EdgeInsets.only(left: 16, top: 15),
              child: Text(
                "Bu Hafta",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            begeniKarti(
              "feyzoaltn",
              "https://scontent.fesb4-2.fna.fbcdn.net/v/t1.0-9/10626873_1535759193336037_5580133484550540855_n.jpg?_nc_cat=111&ccb=2&_nc_sid=8bfeb9&_nc_ohc=E7BcxeOAmhAAX-ZoIvS&_nc_ht=scontent.fesb4-2.fna&oh=394e301e4d8a8295b1d1a0986440050c&oe=600BC0C3",
              "https://scontent.fesb4-2.fna.fbcdn.net/v/t1.0-9/131204108_1075165872913301_687545870396795161_n.jpg?_nc_cat=106&cb=846ca55b-311e05c7&ccb=2&_nc_sid=8bfeb9&_nc_ohc=WG4yTfl2rucAX-_2wQk&_nc_ht=scontent.fesb4-2.fna&oh=166aa694f78c5a3e9adfca26cf577c88&oe=600CD44A",
            ),
            begeniKarti(
              "yusufkonur",
              "https://scontent.fesb4-2.fna.fbcdn.net/v/t1.0-9/66126765_1297794620383068_3474649759602442240_n.jpg?_nc_cat=111&ccb=2&_nc_sid=09cbfe&_nc_ohc=eiKPVimoPJEAX_Z6UR-&_nc_ht=scontent.fesb4-2.fna&oh=84f0827521c3119981ee4652da7aaa76&oe=600A84A9",
              "https://scontent.fesb4-2.fna.fbcdn.net/v/t1.0-9/131204108_1075165872913301_687545870396795161_n.jpg?_nc_cat=106&cb=846ca55b-311e05c7&ccb=2&_nc_sid=8bfeb9&_nc_ohc=WG4yTfl2rucAX-_2wQk&_nc_ht=scontent.fesb4-2.fna&oh=166aa694f78c5a3e9adfca26cf577c88&oe=600CD44A",
            ),
            takipKarti(
              "https://i.gazeteciler.com/2/1280/800/storage/old/files/2019/3/25/328482/328482.jpg",
              "zara",
              "Takip Et",
              Colors.blue,
            ),
            takipKarti(
              "https://yt3.ggpht.com/ytc/AAUvwnioBDPNI_H4HAvtbDrD6YzxblT3YrVzhrE871KbWw=s900-c-k-c0x00ffffff-no-rj",
              "c.konat",
              "Takip",
              Colors.black,
            ),
            Container(
              padding: EdgeInsets.only(left: 16, top: 15),
              child: Text(
                "Bu Ay",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            takipKarti(
              "https://www.biography.com/.image/t_share/MTE4MDAzNDEwNzQ4NjA1OTY2/jennifer-lopez-9542231-3-402.jpg",
              "j.lopez",
              "Takip",
              Colors.black,
            ),
            takipKarti(
              "https://i4.hurimg.com/i/hurriyet/75/750x422/5f53425018c7730634d03ede.jpg",
              "hadise",
              "Takip Et",
              Colors.blue,
            ),
            takipKarti(
              "https://cdn.yenicaggazetesi.com.tr/news/270749.jpg",
              "ebrugundes",
              "Takip",
              Colors.black,
            ),
            takipKarti(
              "https://www.bakimlikadin.net/wp-content/uploads/2020/05/cigdem_batur_01.jpg",
              "cigdembatur",
              "Takip",
              Colors.black,
            ),
            takipKarti(
              "https://www.biyografi.biz/wp-content/uploads/2020/08/ece-mumay.jpg",
              "ecemumay",
              "Takip Et",
              Colors.blue,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          currentIndex: seciliSayfa,
          onTap: sayfaDegistir,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          iconSize: 35,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: SizedBox(
                height: 0,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              title: SizedBox(
                height: 0,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.live_tv,
                color: Colors.white,
              ),
              title: SizedBox(
                height: 0,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shop,
                color: Colors.white,
              ),
              title: SizedBox(
                height: 0,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: SizedBox(
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container begeniKarti(String isim, String resim, String begenilenResim) {
    return Container(
      child: InkWell(
        onTap: () {},
        child: ListTile(
          title: Text(
            isim,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            "Fotoğrafını beğendi.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
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
                  fit: BoxFit.cover),
            ),
          ),
          trailing: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  begenilenResim,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container takipKarti(
      String resim, String isim, String durum, Color durumRenk) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: () {},
        child: ListTile(
          leading: Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: NetworkImage(resim),
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            isim,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            "Seni takip etmeye başladı.",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          trailing: InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              child: Text(
                durum,
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: durumRenk,
                border: Border.all(width: 2, color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
