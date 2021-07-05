import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mesajlaşma Uygulaması",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Konuş"),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  TextEditingController t1 = TextEditingController();

  List<MesajBalonu> mesajListesi = [];

  listeyeEkle(String gelenMesaj) {
    setState(() {
      MesajBalonu mesajNesnesi = MesajBalonu(mesaj: gelenMesaj);
      mesajListesi.insert(0, mesajNesnesi);
      t1.clear();
    });
  }

  Widget sohbetKutusu() {
    return Container(
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              onSubmitted:listeyeEkle,
              controller: t1,
            ),
          ),
          IconButton(
            onPressed: () => listeyeEkle(t1.text),
            icon: Icon(Icons.send_outlined),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              reverse: true,
                itemCount: mesajListesi.length,
                itemBuilder: (_, indeksNo) => mesajListesi[indeksNo]),
          ),
           Divider(thickness:3,),
          sohbetKutusu(),
        ],
      ),
    );
  }
}

String isim = "User";
String mesaj;

class MesajBalonu extends StatelessWidget {
  String mesaj;

  MesajBalonu({this.mesaj});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10 ),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            child: Text(isim [0]),),
          Column(
            children: <Widget>[
              Text(""),
              Text(isim),
              Text(mesaj + '\n'),
            ],
          )
        ],
      ),
    );
  }
}
