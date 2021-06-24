import 'package:flutter/material.dart';
import 'package:wordlearn/anasayfa.dart';
import 'package:wordlearn/kelimelerim.dart';
import 'package:wordlearn/main.dart';

class kullanicigiris extends StatefulWidget {
  @override
  _kullanicigirisState createState() => _kullanicigirisState();
}

class _kullanicigirisState extends State<kullanicigiris> {
  String kullaniciadi;
  String sifre;
  final _formKey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form (
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0,left: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    labelText: "kullanıcı adı",
                    labelStyle: TextStyle(color: Colors.blue),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value){
                    if(value.isEmpty){
                      return "kullanıcı adını giriniz ";
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
                  labelText: "Şifre",
                  labelStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value.isEmpty){
                    return "şifrenizi giriniz ";
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (value){
                  kullaniciadi=value;
                },
              ),
              Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(child: Text('üye ol '),onPressed: (){},
                  ),

    MaterialButton(child: Text('şifremi unuttum'),onPressed: (){},
    ),

                ],
              ),
              _Girisbutton()
            ],
          ),
        ),
      ),
    );
  }
  Widget _Girisbutton()=>ElevatedButton(child: Text("Giriş"),onPressed: (){
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();
      if(kullaniciadi=='mert' /*&& sifre=='mert'*/)
      { Navigator.push(context,MaterialPageRoute(builder:(context)=>anasayfa()));

        debugPrint("giriş başarılı ");

      }else{
        showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            title: Text('hata'),
            content: Text('giriş bilgileri hatalı '),
          );
        });
      }
      debugPrint('kullanıcı adı: $kullaniciadi, sifre: $sifre');
    }
  },);
}
