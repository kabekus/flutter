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
  
  girisButon(){
    Navigator.pushNamed(context, "/ProfilSayfasi");
  }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text("Giriş")),
       body: Container(
         child: Column(
           children: <Widget> [
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
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text("Profilim"),),
     );
   }
 }

