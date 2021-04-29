import 'package:flutter/material.dart';
import 'package:wordlearn/kelimelerim.dart';
class profil extends StatefulWidget {
  @override
  _profilState createState() => _profilState();
}
class _profilState extends State<profil> {
  String kullaniciadi;
  String sifre;
  final _formKey =GlobalKey<FormState>();
  @override

  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      body:
        Form (
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0,left: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Profil Bilgileri',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900 ),),
              SizedBox(height: 50,),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  labelText: " Ad",
                  labelStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value.isEmpty){
                    return " Ad giriniz ";
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (value){
                  kullaniciadi=value;
                },
              ),
              SizedBox(
                height: 10.0,
              ),

              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  labelText: "Soyad",
                  labelStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value.isEmpty){
                    return "soyad giriniz ";
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (value){
                  kullaniciadi=value;
                },
              ),
    SizedBox(
    height: 10.0,),

              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  labelText: "Doğum tarihi",
                  labelStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value.isEmpty){
                    return "Doğum giriniz ";
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (value){
                  kullaniciadi=value;
                },
              ),
              SizedBox(
                height: 10.0,),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  labelText: "Mail",
                  labelStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value.isEmpty){
                    return "Mail giriniz ";
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (value){
                  kullaniciadi=value;
                },
              ),
              _Girisbutton()
            ],
          ),
        ),
      ),

    );
  }
  Widget _Girisbutton()=>ElevatedButton(child: Text("Kaydet"),onPressed: (){
      {
      debugPrint("bilgiler düzenlendi ");

      }
    }
  );
}
