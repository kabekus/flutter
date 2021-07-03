import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mobil Uygulamam",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menü"),
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

   String blogYazisi='Dert Dinlenir :)';

   dertDinle(){
     setState(() {
        blogYazisi='Dinleniyor';
     });
   }
   tamamSus(){
     setState(() {
        blogYazisi='Susturuldu';
     });
   }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: <Widget>[
            Text(blogYazisi),
            ElevatedButton(onPressed:dertDinle , child:Text('Dinlemeye Başla')),
            ElevatedButton(onPressed:tamamSus , child:Text('Sus')),
           
          ],)
      ),
    );
  }
}