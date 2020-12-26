import 'package:flutter/material.dart';

class GonderiKarti extends StatefulWidget {
  final String isim;
  final String resim;
  final String asilResim;
  final String aciklama;
  final String sure;

  const GonderiKarti(
      {Key key,
      this.isim,
      this.resim,
      this.aciklama,
      this.sure,
      this.asilResim})
      : super(key: key);

  @override
  _GonderiKartiState createState() => _GonderiKartiState();
}

class _GonderiKartiState extends State<GonderiKarti> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          //baslik
          ListTile(
            title: Text(
              widget.isim,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.red[700]),
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: NetworkImage(widget.resim),
                ),
              ),
            ),
            trailing: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {},
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
          //resim
          Container(
            height: 350,
            width: double.infinity,
            child: Image.network(
              widget.asilResim,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 15),
          //altsekme begeni yorum
          Row(
            children: [
              SizedBox(width: 15),
              InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {},
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              SizedBox(width: 20),
              InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {},
                child: Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              SizedBox(width: 20),
              InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {},
                child: Icon(
                  Icons.send,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width - 205),
              InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {},
                child: Icon(
                  Icons.save,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ],
          ),
          SizedBox(height: 13),
          //kullaniciadi gönderi yazisi
          Column(
            children: [
              //kullanıcı sözü
              Row(
                children: [
                  SizedBox(width: 15),
                  Text(
                    widget.isim,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    widget.aciklama,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
              //yorum
              SizedBox(height: 5),
              ListTile(
                title: Text(
                  "Yorum ekle...",
                  style: TextStyle(color: Colors.grey[500]),
                ),
                leading: InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {},
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://scontent.fesb4-2.fna.fbcdn.net/v/t1.0-9/121287888_1027492584347297_2899465042897488268_n.jpg?_nc_cat=104&ccb=2&_nc_sid=09cbfe&_nc_ohc=V4W-SitVg2oAX__OXsJ&_nc_ht=scontent.fesb4-2.fna&oh=422064d9fc84749684e2af3d325b7443&oe=600B600C",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              //süre
              Container(
                margin: EdgeInsets.only(left: 15),
                alignment: Alignment.topLeft,
                child: Text(
                  widget.sure,
                  style: TextStyle(color: Colors.grey[500]),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
