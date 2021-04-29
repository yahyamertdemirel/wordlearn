import 'package:flutter/material.dart';
import 'package:wordlearn/kullanicigiris.dart';
import 'package:wordlearn/profil.dart';
import 'package:wordlearn/iletisim.dart';
import 'package:wordlearn/anasayfa.dart';
import 'package:wordlearn/ayarlar.dart';
import 'package:wordlearn/bildirim.dart';
import 'package:wordlearn/kelimelerim.dart';

void main() {
  runApp(MyApp());

}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index =0;
  List<Widget>list =[
  anasayfa(),
  profil(),
  ayarlar(),
  iletisim(),
    bildirim(),
    kelimelerim(),
    kullanicigiris(),
  ];
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

          title: Text('Wordlearn'),
          actions: [
            IconButton(
              icon: Icon(Icons.search, color: Colors.black),
              onPressed: () {},
            ),
      IconButton(
        icon: Icon(Icons.person, color: Colors.black),
        onPressed: () {},
      ),

          ],
        ),
        body: list[index],
        drawer: Mydrawer(onTap: (ctx,i){setState(() {
          index=i;
          Navigator.pop(ctx);
        });},),
      ),
    );
  }
}
class Mydrawer extends StatelessWidget {
  final Function onTap;

  Mydrawer({
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/fotograf/profil1.jpg'),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      'Yahya Mert Demirel',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white
                    ),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('kullanıcı giris'),
              onTap: ()=>onTap(context,6),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text('Anasayfa'),
              onTap: ()=>onTap(context,0),
            ),
            ListTile(
              leading: Icon(Icons.person_outline_outlined),
              title: Text('profil'),
              onTap: ()=>onTap (context,1),
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text('İletişim'),
              onTap: ()=>onTap(context,3),
            ),
             ListTile(
              leading: Icon(Icons.settings),
              title: Text('Ayarlar'),
              onTap: ()=>onTap(context,2),
            ),

            Divider(height: 1 ,),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('çıkış'),
              onTap: ()=>onTap(context,0),
            ),
          ],
        ),
      ),
    );
  }
}
