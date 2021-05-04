import 'package:flutter/material.dart';
void main() => runApp(App());

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter penyimpanan data',
      home: Scaffold(
        appBar: AppBar(
          title: Text('2018020729-6SIA5'),
        ),
        body: Warnet(),
      ),
    );
  }
}

class TARIFWARNET{
  
  String pagi;
  String malam;
  
  
  TARIFWARNET({ this.pagi, this.malam});
  
}

// class Warnet
class Warnet extends StatefulWidget {
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Warnet> {
  //deklarasi variabel
  final txtpaketmalam = TextEditingController();
  final txtpaketbiasa = TextEditingController();
  final txtpilihan = TextEditingController();
  

  List<Widget> data = [];

  onTambah() {
    setState(() {
      data.add(ListTile(
        leading: Text(txtpaketmalam.text),
        subtitle: Text(txtpaketbiasa.text),
        trailing: Text(txtpilihan.text),
      ));
      txtpaketmalam.clear();
      txtpaketbiasa.clear();
      txtpilihan.clear();
    });
  }

  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        new Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
           
              TextField(
                controller: txtpaketmalam,
                decoration: InputDecoration(hintText: 'pagi'),
              ),
              TextField(
                controller: txtpaketbiasa,
                decoration: InputDecoration(hintText: 'malam'),
              ),
               TextField(
                controller: txtpilihan,
                decoration: InputDecoration(hintText: 'pilihan'),
              ),
              Divider(height: 5.0),
              ElevatedButton(child: Text("Tambah"), onPressed: onTambah),
            ],
          ),
        ),
        new Column(
          children: data,
        )
      ],
    );
  }
}