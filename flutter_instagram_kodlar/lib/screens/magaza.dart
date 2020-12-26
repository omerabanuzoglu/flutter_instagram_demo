import 'package:flutter/material.dart';

class Magaza extends StatefulWidget {
  @override
  _MagazaState createState() => _MagazaState();
}

class _MagazaState extends State<Magaza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Mağaza",
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          Icon(
            Icons.dehaze,
            size: 35,
          ),
          SizedBox(width: 20),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          alisverisKarti(
            "https://www.campaigntr.com/v3/wp-content/uploads/2019/05/4-1.jpg",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgFaju5a0nznDzxYsznMoHOOH9YOJ-a_FSdQ&usqp=CAU",
            "Kığılı",
          ),
          alisverisKarti(
            "https://cdn.krc.com.tr/image/cdndata/185/1416102/image8697918666071-1.jpg",
            "https://mediacat.com/wp-content/uploads/archive/51090.jpg",
            "Karaca",
          ),
          alisverisKarti(
            "https://s3.amazonaws.com/nikeinc/assets/84925/Sp19_BB_Nike_Adapt_20181218_NIKE0538_Detail5_rectangle_1600.jpg?1547068102",
            "https://c.static-nike.com/a/images/w_1920,c_limit/mdbgldn6yg1gg88jomci/image.jpg",
            "Nike",
          ),
          alisverisKarti(
            "https://www.sariyildizspor.com/UserFiles/ProductImages/0/cg1531/orj/adidas-erkek-spor-cantasi-trn-core-tb-xs-81662.jpg",
            "https://pbs.twimg.com/profile_images/1124581826696286209/yJzsTD-G_400x400.png",
            "Adidas",
          ),
          alisverisKarti(
            "https://statics.boyner.com.tr/mnresize/500/-/productimages/5002444528_001_01_900_1254.jpg",
            "https://pbs.twimg.com/profile_images/1285924375263350785/iIcjSljv_400x400.jpg",
            "Puma",
          ),
          alisverisKarti(
            "https://pbs.twimg.com/media/Ep8oti4XMAAWZOk.jpg",
            "https://pbs.twimg.com/media/Ep8oti4XMAAWZOk.jpg",
            "Prada",
          ),
          alisverisKarti(
            "https://mudo.akinoncdn.com/products/2019/08/28/352457/f5eecdbb-e924-4287-87d2-96ec830ee351.jpg",
            "https://d1yjjnpx0p53s8.cloudfront.net/styles/logo-thumbnail/s3/052012/mudo_city.png?itok=7HVXJu-O",
            "Mudo",
          ),
          alisverisKarti(
            "https://cdn.sorsware.com/oxxo/ContentImages/Product/20k/20KOX-WAZYPANJOG20K/nature-friendly-jogger-pantolon--tencel-_antik-carman-mavi_1_detay.jpg",
            "https://lh3.googleusercontent.com/proxy/OFT1r_59y2VzGcpabR97VP9IgzZCXcDJTcJYbX0MVqqvMamq2flp3Pg-46pivaBz3pre3RpEWIpwmpKpr1BozhqapPAfwvzygq1DtBKNpVXtrj1zkRNUzlhv0DyW1C7MYm6sh0RX6_USVhltMged8jRY8FDQJwXBs6RIJdftmMIAfC7s8Jks",
            "Mavi",
          ),
          alisverisKarti(
            "https://cdn.krc.com.tr/image/cdndata/185/1416102/image8697918666071-1.jpg",
            "https://mediacat.com/wp-content/uploads/archive/51090.jpg",
            "Karaca",
          ),
          alisverisKarti(
            "https://img-lcwaikiki.mncdn.com/mnresize/1024/-/productimages/20162/3/2529736/l_20162-6k1404z6-cvl_a.jpg",
            "https://www.ankamall.com.tr/fileadmin/user_upload/GLOBAL/brand_stores/logos/lcwaikiki.jpg",
            "LC Waikiki",
          ),
          alisverisKarti(
            "https://www.sariyildizspor.com/UserFiles/ProductImages/0/cg1531/orj/adidas-erkek-spor-cantasi-trn-core-tb-xs-81662.jpg",
            "https://pbs.twimg.com/profile_images/1124581826696286209/yJzsTD-G_400x400.png",
            "Adidas",
          ),
          alisverisKarti(
            "https://pbs.twimg.com/media/Ep8oti4XMAAWZOk.jpg",
            "https://pbs.twimg.com/media/Ep8oti4XMAAWZOk.jpg",
            "Prada",
          ),
        ],
      ),
    );
  }

  Stack alisverisKarti(String urunResmi, String markaResmi, String markaAdi) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(
                urunResmi,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 5,
          left: 5,
          child: Row(
            children: [
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: NetworkImage(
                      markaResmi,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Text(
                markaAdi,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ],
    );
  }
}
