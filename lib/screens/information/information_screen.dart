import 'package:flutter/material.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({ Key key }) : super(key: key);
  static String routeName = "/information";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Informasi'),),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          SizedBox(height: 30,),
          Container(
            width: 200,
            height: 200,
            child: Image.asset('assets/images/logo_nulungi.png'),
          ),
          SizedBox(height: 50,),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: TextStyle(
                color: Colors.black,
                wordSpacing: 6,
                fontSize: 15
              ),
              text: '\t\t\t\t\t\t\t\tManusia merupakan makhluk dengan sifat sosial yang pada hakikatnya ditakdirkan untuk hidup berdampingan dengan orang lain. Sebagai makhluk sosial, manusia akan cenderung untuk berkumpul dan membentuk sebuah komunitas. Manusia juga hendaknya saling tolong menolong satu sama lain dan berinteraksi dengan orang lain untuk bertukar pendapat, bermain, serta untuk memenuhi kebutuhan hidupnya. Contoh dari kegiatan ini dapat kita lihat di masyarakat sekitar kita dengan budayanya yang luas seperti kerja bakti, selamatan, arisan dan banyak contoh lain yang dapat kita amati di sekitar. Dalam bidang psikologi, kegiatan memberikan bantuan atau keuntungan kepada orang lain tanpa mengharap adanya imbalan dalam bentuk apapun disebut dengan altruisme. \n\n\t\t\t\t\t\t\t\tPeran budaya juga penting dalam perilaku tolong menolong. Menurut Praningtyas (2013), dalam budaya Jawa terdapat enam faktor untuk menolong seseorang dalam dunia kerja. Pertama, rasa empati dan keinginan untuk menolong merupakan faktor terbesar diantara faktor lainnya; kedua, untuk mempercepat pekerjaan; ketiga, membina keharmonisan hubungan dengan orang lain; keempat, kepribadian individu yang menerima pertolongan; kelima, berbagi ilmu dan juga pengalaman; keenam, menolong karena merupakan suatu bentuk ibadah. Di dalam budaya Jawa kita dapat melihat perilaku tolong menolong sangatlah dipentingkan dan diutamakan. Faktor-faktor ini meskipun datang dari budaya Jawa dapat kita lihat juga diterapkan oleh orang dari luar Jawa. Dapat dibilang, Indonesia sangat menjunjung tinggi sifat tolong menolong dan telah menjadi basis sifat rakyat Indonesia.\n\n\t\t\t\t\t\t\t\tPada zaman globalisasi ini, banyak kota-kota besar yang ada di Indonesia sedikit demi sedikit mengalami perubahan sebagai akibat modernisasi yang menyebabkan nilai-nilai pengabdian, kesetiakawanan dan tolong menolong mengalami penurunan sehingga muncul perwujudan kepentingan diri sendiri dan rasa individualis (Sarwono dan Meinarno, 2009). Selain itu kurang memadainya platform yang menaungi penyebaran informasi mengenai kegiatan pengabdian dan tolong-menolong membuat penyebaran informasinya menjadi tidak merata dan tidak jarang juga terlewat. \n\n\t\t\t\t\t\t\t\tUntuk mengatasi hal tersebut, perlu dibuatnya produk digital berupa aplikasi yang dapat menaungi penyebaran informasi mengenai butuhnya tenaga relawan atau bantuan kepada masyarakat. Dimana aplikasi tersebut dapat menampilkan penawaran tempat yang membutuhkan bantuan kepada siapa saja yang ingin berpartisipasi dimana saja dan kapan saja yang jadwal serta bidangnya dapat disesuaikan. Serta adanya fitur pengingat, diskusi dan pemberian sertifikat sebagai penghargaan diharapkan dapat membantu masyarakat Indonesia meningkatkan rasa gotong-royong serta membantu para generasi muda meningkatkan kesadaran sifat gotong-royong dan kewarganegaraan.'
            ) 
          )
        ],
      ),
    );
  }
}