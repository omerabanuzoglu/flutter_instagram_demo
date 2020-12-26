import 'package:Instagram/istekler.dart';
import 'package:flutter/material.dart';

class Mesajlar extends StatefulWidget {
  @override
  _MesajlarState createState() => _MesajlarState();
}

class _MesajlarState extends State<Mesajlar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Sohbetler",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Icon(
            Icons.videocam,
            color: Colors.white,
            size: 40,
          ),
          SizedBox(width: 30),
          Icon(
            Icons.open_in_new,
            size: 35,
          ),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 15),
          //mesaj ve istek başlık
          Container(
            child: Row(
              children: [
                SizedBox(width: 15),
                Text(
                  "Mesajlar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 180,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Istekler()));
                  },
                  child: Text(
                    "1 İstek",
                    style: TextStyle(
                      color: Colors.blue[500],
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          //mesajlar
          mesajKart(
            "https://pbs.twimg.com/profile_images/1308528999040155658/lNuiSau4.png",
            "trthaber",
            "Bence bu haber yalan.",
            "5d",
          ),
          mesajKart(
            "https://scontent.fesb4-2.fna.fbcdn.net/v/t31.0-8/11921813_1611877295734387_7760034685834256661_o.jpg?_nc_cat=106&ccb=2&_nc_sid=09cbfe&_nc_ohc=KMBiEM5FjHIAX-ok1ME&_nc_ht=scontent.fesb4-2.fna&oh=cd101bbf58501e169f37db9d7d6bcdab&oe=600ABE7A",
            "nihaterdgn",
            "Kardeşim beni arar mısın?",
            "13d",
          ),
          mesajKart(
            "https://scontent.fesb4-2.fna.fbcdn.net/v/t31.0-8/11536433_797287180386140_55436595205144821_o.jpg?_nc_cat=108&ccb=2&_nc_sid=2c4854&_nc_ohc=PAJ489bmal4AX_NJy0-&_nc_ht=scontent.fesb4-2.fna&oh=6042aae1bac249ae21ec873dd7269676&oe=600C0D1E",
            "yusakargali",
            "Kardeşim neredesin?",
            "1s",
          ),
          mesajKart(
            "https://scontent.fesb4-2.fna.fbcdn.net/v/t1.0-9/10626873_1535759193336037_5580133484550540855_n.jpg?_nc_cat=111&ccb=2&_nc_sid=8bfeb9&_nc_ohc=E7BcxeOAmhAAX-ZoIvS&_nc_ht=scontent.fesb4-2.fna&oh=394e301e4d8a8295b1d1a0986440050c&oe=600BC0C3",
            "feyzoaltn",
            "Ömer bana acil ulaşmalısın.",
            "2s",
          ),
          mesajKart(
            "https://scontent.fesb4-1.fna.fbcdn.net/v/t1.0-9/26734264_1964803813772202_8158589869882488781_n.jpg?_nc_cat=107&ccb=2&_nc_sid=19026a&_nc_ohc=6ikaGpWZtJcAX-itw17&_nc_ht=scontent.fesb4-1.fna&oh=bf1a6ecf64e800661556d831d9a75303&oe=600B8EEA",
            "alimcanklf",
            "Kardeşim neredesin?",
            "5s",
          ),
          mesajKart(
            "https://cdn.pixabay.com/photo/2016/11/29/03/36/beautiful-1867093_960_720.jpg",
            "Derya Bulut",
            "Eee naber",
            "1h",
          ),
        ],
      ),
    );
  }

  Widget mesajKart(String resim, String isim, String mesaj, String sure) {
    return ListTile(
      title: Text(
        isim,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
      subtitle: Row(
        children: [
          Text(
            mesaj,
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 18,
            ),
          ),
          SizedBox(width: 15),
          Text(
            sure,
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 18,
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
          ),
        ),
      ),
      trailing: Icon(
        Icons.camera_alt,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
