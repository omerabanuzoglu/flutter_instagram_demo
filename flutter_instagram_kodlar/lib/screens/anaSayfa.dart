import 'package:Instagram/bildirim.dart';
import 'package:Instagram/gonderiKarti.dart';
import 'package:Instagram/mesajlar.dart';
import 'package:Instagram/screens/kesfet.dart';
import 'package:Instagram/screens/kisi_profili.dart';
import 'package:Instagram/screens/magaza.dart';
import 'package:Instagram/screens/profil.dart';
import 'package:Instagram/screens/reels.dart';
import 'package:flutter/material.dart';

import '../ekleme.dart';

class AnaSayfam extends StatefulWidget {
  @override
  _AnaSayfamState createState() => _AnaSayfamState();
}

class _AnaSayfamState extends State<AnaSayfam> {
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Türk Chat",
          style: TextStyle(fontFamily: "Lobster", fontSize: 30),
        ),
        actions: [
          //ekleme
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Ekleme(),
              ),
            ),
            child: Icon(Icons.add_circle_outline, size: 30),
          ),
          SizedBox(width: 25),
          //bildirim
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Bildirim(),
              ),
            ),
            child: Icon(Icons.favorite_border, size: 30),
          ),
          SizedBox(width: 25),
          //mesajlar
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Mesajlar(),
              ),
            ),
            child: Icon(Icons.chat_bubble_outline, size: 30),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: ListView(
        children: [
          //Hikayeler
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 5),
                profHikaye(
                  "https://scontent.fesb4-2.fna.fbcdn.net/v/t1.0-9/121287888_1027492584347297_2899465042897488268_n.jpg?_nc_cat=104&ccb=2&_nc_sid=09cbfe&_nc_ohc=V4W-SitVg2oAX__OXsJ&_nc_ht=scontent.fesb4-2.fna&oh=422064d9fc84749684e2af3d325b7443&oe=600B600C",
                  "Hikaye",
                  "Ömer Poyraz",
                  "Ankara",
                ),
                SizedBox(width: 10),
                profHikaye(
                  "https://pbs.twimg.com/profile_images/1308528999040155658/lNuiSau4.png",
                  "trthaber",
                  "Trt Haber",
                  "Türkiye'ye dair haberler",
                ),
                SizedBox(width: 10),
                profHikaye(
                  "https://scontent.fesb4-1.fna.fbcdn.net/v/t1.0-9/26734264_1964803813772202_8158589869882488781_n.jpg?_nc_cat=107&ccb=2&_nc_sid=19026a&_nc_ohc=6ikaGpWZtJcAX-itw17&_nc_ht=scontent.fesb4-1.fna&oh=bf1a6ecf64e800661556d831d9a75303&oe=600B8EEA",
                  "alimcanklf",
                  "Alimcan Kalfa",
                  "Elbet bir gün..",
                ),
                SizedBox(width: 10),
                profHikaye(
                  "https://scontent.fesb4-2.fna.fbcdn.net/v/t31.0-8/11536433_797287180386140_55436595205144821_o.jpg?_nc_cat=108&ccb=2&_nc_sid=2c4854&_nc_ohc=PAJ489bmal4AX_NJy0-&_nc_ht=scontent.fesb4-2.fna&oh=6042aae1bac249ae21ec873dd7269676&oe=600C0D1E",
                  "yusakargali",
                  "Yüşa Kargalı",
                  "Dervişin fikri neyse zikri odur.",
                ),
                SizedBox(width: 10),
                profHikaye(
                  "https://scontent.fesb4-2.fna.fbcdn.net/v/t1.0-9/10626873_1535759193336037_5580133484550540855_n.jpg?_nc_cat=111&ccb=2&_nc_sid=8bfeb9&_nc_ohc=E7BcxeOAmhAAX-ZoIvS&_nc_ht=scontent.fesb4-2.fna&oh=394e301e4d8a8295b1d1a0986440050c&oe=600BC0C3",
                  "feyzoaltn",
                  "Feyzullah Altınok",
                  "Adı batsın şu dünyanın tadımı kaldı.",
                ),
                SizedBox(width: 10),
                profHikaye(
                  "https://scontent.fesb4-2.fna.fbcdn.net/v/t1.0-9/66126765_1297794620383068_3474649759602442240_n.jpg?_nc_cat=111&ccb=2&_nc_sid=09cbfe&_nc_ohc=eiKPVimoPJEAX_Z6UR-&_nc_ht=scontent.fesb4-2.fna&oh=84f0827521c3119981ee4652da7aaa76&oe=600A84A9",
                  "yusufkonur",
                  "Yusuf Konur",
                  "Hayırlara vesile olsun.",
                ),
                SizedBox(width: 10),
                profHikaye(
                  "https://scontent.fesb4-2.fna.fbcdn.net/v/t31.0-8/11921813_1611877295734387_7760034685834256661_o.jpg?_nc_cat=106&ccb=2&_nc_sid=09cbfe&_nc_ohc=KMBiEM5FjHIAX-ok1ME&_nc_ht=scontent.fesb4-2.fna&oh=cd101bbf58501e169f37db9d7d6bcdab&oe=600ABE7A",
                  "nihaterdgn",
                  "Nihat Erdoğan",
                  "Hayat..",
                ),
              ],
            ),
          ),
          GonderiKarti(
            isim: "alimcanklf",
            resim:
                "https://scontent.fesb4-1.fna.fbcdn.net/v/t1.0-9/26734264_1964803813772202_8158589869882488781_n.jpg?_nc_cat=107&ccb=2&_nc_sid=19026a&_nc_ohc=6ikaGpWZtJcAX-itw17&_nc_ht=scontent.fesb4-1.fna&oh=bf1a6ecf64e800661556d831d9a75303&oe=600B8EEA",
            asilResim:
                "https://scontent.fesb4-1.fna.fbcdn.net/v/t1.0-9/34419235_453808898382338_3801667074871263232_o.jpg?_nc_cat=105&ccb=2&_nc_sid=8bfeb9&_nc_ohc=Dj8BdSWd9pgAX9x2Umx&_nc_ht=scontent.fesb4-1.fna&oh=1385b78f81854d3dc6604a16ea0ae399&oe=600CF8A5",
            aciklama: "Ömer gardaşım.",
            sure: "12 dakika önce",
          ),
          GonderiKarti(
            isim: "trthaber",
            resim:
                "https://pbs.twimg.com/profile_images/1308528999040155658/lNuiSau4.png",
            asilResim:
                "https://trthaberstatic.cdn.wp.trt.com.tr/resimler/1480000/koronavirus-asisi-asi-1481887_2.jpg",
            aciklama: "Aşı ile son dakika!",
            sure: "20 dakika önce",
          ),
          GonderiKarti(
            isim: "feyzoaltn",
            resim:
                "https://scontent.fesb4-2.fna.fbcdn.net/v/t1.0-9/10626873_1535759193336037_5580133484550540855_n.jpg?_nc_cat=111&ccb=2&_nc_sid=8bfeb9&_nc_ohc=E7BcxeOAmhAAX-ZoIvS&_nc_ht=scontent.fesb4-2.fna&oh=394e301e4d8a8295b1d1a0986440050c&oe=600BC0C3",
            asilResim:
                "https://scontent.fesb4-2.fna.fbcdn.net/v/t1.0-9/14202704_1825561174355836_2810497554289522371_n.jpg?_nc_cat=106&ccb=2&_nc_sid=e3f864&_nc_ohc=iLAWph8kyUAAX-8x6Ff&_nc_ht=scontent.fesb4-2.fna&oh=679e5984fdcfcd75fbbcac2b7ae21da0&oe=600DBD1A",
            aciklama: "Sene bilmem kaç...",
            sure: "1 saat önce",
          ),
          GonderiKarti(
            isim: "omerr.poyrazz",
            resim:
                "https://scontent.fesb4-2.fna.fbcdn.net/v/t1.0-9/121287888_1027492584347297_2899465042897488268_n.jpg?_nc_cat=104&ccb=2&_nc_sid=09cbfe&_nc_ohc=V4W-SitVg2oAX__OXsJ&_nc_ht=scontent.fesb4-2.fna&oh=422064d9fc84749684e2af3d325b7443&oe=600B600C",
            asilResim:
                "https://scontent.fesb4-2.fna.fbcdn.net/v/t1.0-9/131204108_1075165872913301_687545870396795161_n.jpg?_nc_cat=106&cb=846ca55b-311e05c7&ccb=2&_nc_sid=8bfeb9&_nc_ohc=WG4yTfl2rucAX-_2wQk&_nc_ht=scontent.fesb4-2.fna&oh=166aa694f78c5a3e9adfca26cf577c88&oe=600CD44A",
            aciklama: "Elbet birgün...",
            sure: "2 saat önce",
          ),
          //Gönderi Yok
          Text(
            "Gönderi yok",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Widget profHikaye(
      String resim, String isim, String isimSoyisim, String hakkinda) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => KisiProfil(
                  resim: resim,
                  kullaniciAdi: isim,
                  isimSoyisim: isimSoyisim,
                  hakkinda: hakkinda,
                ),
              ),
            );
          },
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(80),
                border: Border.all(width: 4, color: Colors.red[700]),
                image: DecorationImage(image: NetworkImage(resim))),
          ),
        ),
        SizedBox(height: 2),
        Text(
          isim,
          style: TextStyle(color: Colors.white, fontSize: 16),
        )
      ],
    );
  }
}
