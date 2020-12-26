import 'package:flutter/material.dart';

class Kesfet extends StatefulWidget {
  @override
  _KesfetState createState() => _KesfetState();
}

class _KesfetState extends State<Kesfet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          //arama
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
            height: 45,
            child: Row(
              children: [
                SizedBox(width: 20),
                Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.grey,
                ),
                SizedBox(width: 15),
                Text(
                  "Ara",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 2,
                color: Colors.grey,
              ),
            ),
          ),
          //arama kategorileri
          Container(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                aramaKategori("IGTV"),
                aramaKategori("Seyahat"),
                aramaKategori("Mimari"),
                aramaKategori("Dekorasyon"),
                aramaKategori("Stil"),
                aramaKategori("Yemek"),
                aramaKategori("Sanat"),
                aramaKategori("Kendin Yap"),
              ],
            ),
          ),
          //keşfet kartları
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 480,
            child: GridView.count(
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              crossAxisCount: 3,
              children: [
                kesfetResim(
                  "https://cdn.pixabay.com/photo/2015/06/22/08/40/child-817373_960_720.jpg",
                ),
                kesfetResim(
                  "https://cdn.pixabay.com/photo/2014/12/16/22/25/woman-570883_960_720.jpg",
                ),
                kesfetResim(
                  "https://cdn.pixabay.com/photo/2015/07/09/00/29/woman-837156_960_720.jpg",
                ),
                kesfetResim(
                  "https://cdn.pixabay.com/photo/2017/09/01/21/53/blue-2705642_960_720.jpg",
                ),
                kesfetResim(
                  "https://cdn.pixabay.com/photo/2018/07/21/03/55/girl-3551832_960_720.jpg",
                ),
                kesfetResim(
                  "https://cdn.pixabay.com/photo/2018/01/13/19/39/fashion-3080644_960_720.jpg",
                ),
                kesfetResim(
                  "https://cdn.pixabay.com/photo/2018/03/12/12/32/woman-3219507_960_720.jpg",
                ),
                kesfetResim(
                  "https://cdn.pixabay.com/photo/2016/12/19/21/36/winters-1919143_960_720.jpg",
                ),
                kesfetResim(
                  "https://cdn.pixabay.com/photo/2016/01/19/17/48/woman-1149911_960_720.jpg",
                ),
                kesfetResim(
                  "https://cdn.pixabay.com/photo/2017/02/04/12/25/man-2037255_960_720.jpg",
                ),
                kesfetResim(
                  "https://cdn.pixabay.com/photo/2017/06/20/22/14/men-2425121_960_720.jpg",
                ),
                kesfetResim(
                  "https://cdn.pixabay.com/photo/2015/06/22/08/40/child-817373_960_720.jpg",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container kesfetResim(String resim) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            resim,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget aramaKategori(String isim) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(left: 7, right: 5),
        padding: EdgeInsets.all(8),
        child: Text(
          isim,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Colors.grey),
        ),
      ),
    );
  }
}
