import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hesap Makinesi",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hesap Makinesi"),
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
  num sayi1, sayi2, sonuc;

  TextEditingController t1 =TextEditingController();
  TextEditingController t2 =TextEditingController();
 
sayiDonustur(){
sayi1=num.parse(t1.text);
sayi2=num.parse(t2.text);
}
sayiTopla(){
  setState(() {
  sayiDonustur();
   sonuc = sayi1 + sayi2;
  });
}
sayiCikar(){
  setState(() {
   sayiDonustur();
   sonuc = sayi1 - sayi2;
  });
}
sayiCarp(){
  setState(() {
   sayiDonustur();
   sonuc = sayi1 - sayi2;
  });
}
sayiBol(){
  setState(() {
   sayiDonustur();
   sonuc = sayi1 - sayi2;
  });
}



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text("$sonuc"),
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            ElevatedButton(onPressed: sayiTopla, child: Text("Topla")),
            ElevatedButton(onPressed: sayiCikar, child: Text("Çıkar")),
            ElevatedButton(onPressed: sayiCarp, child: Text("Çarp")),
            ElevatedButton(onPressed: sayiBol, child: Text("Böl")),
          ],
        ),
      ),
    );
  }
}
