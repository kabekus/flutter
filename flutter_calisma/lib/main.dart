import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ToDo List",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yapılacaklar"),
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
TextEditingController t1 =TextEditingController();
List yapilacaklarListesi=[];

listeyeEkle(){
setState(() {
  yapilacaklarListesi.add(t1.text);
  t1.clear();
});
}

listedenSil(){
  setState(() {
    yapilacaklarListesi.remove(t1.text);
  });
}

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50),
      child: Center(
        child: Column(
          children: <Widget>[
          Flexible(child:ListView.builder(
            itemCount: yapilacaklarListesi.length ,
            itemBuilder: (context,indeksNo)=> ListTile(
            title: Text(yapilacaklarListesi[indeksNo]),
          ),
          ),
          ),
          TextField(controller: t1,),
           ElevatedButton(onPressed: listeyeEkle, child:Text('Ekleme Yap'),
           ),
           ElevatedButton(onPressed: listedenSil, child:Text('sil'),
           ),
           ],

           )
           
        ),
      
    );
  }
}
