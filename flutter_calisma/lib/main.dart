import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:"/",
      routes: {
        "/": (context)=> GirisEkrani(),
        "/ProfilSayfasi": (context)=> ProfilSayfasi(),
      },
    );
  }
}
 class GirisEkrani extends StatefulWidget {
   @override
   _GirisEkraniState createState() => _GirisEkraniState();
 }
 
 class _GirisEkraniState extends State<GirisEkrani> {
  
  TextEditingController txt1 =TextEditingController();
  TextEditingController txt2 = TextEditingController();
  girisButon(){
    Navigator.pushNamed(
      context, "/ProfilSayfasi", 
      arguments: VeriModeli(
        kullaniciAdi: txt1.text,
        sifre: txt2.text
      ));

  }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text("Giriş")),
       body: Container(
         child: Column(
           children: <Widget> [
             TextFormField(controller:txt1),
             TextFormField(controller:txt2 ,),
             ElevatedButton(onPressed: girisButon, child:Text("Giriş Yap"))
           ],
         ),
         ),
     );
   }
 }

 class ProfilSayfasi extends StatefulWidget {
   @override
   _ProfilSayfasiState createState() => _ProfilSayfasiState();
 }
 
 class _ProfilSayfasiState extends State<ProfilSayfasi> {
    anaSayfa(){
    Navigator.pushNamed(
      context, "/", 
    );

  }
   @override
   Widget build(BuildContext context) {

     VeriModeli iletilenArgumanlar= ModalRoute.of(context).settings.arguments;

     return Scaffold(
       appBar: AppBar(title: Text("Profilim"),
       ),
       body: Container(
         child: Column (
           children: <Widget> [
            ElevatedButton(onPressed: anaSayfa, child:Text("Ana Sayfaya Dön")),
            Text(iletilenArgumanlar.kullaniciAdi),
            Text(iletilenArgumanlar.sifre)
           ],
         ),
       ),
     );
   }
 }

 class VeriModeli {
   String kullaniciAdi , sifre;
   VeriModeli({this.kullaniciAdi, this.sifre});
 }