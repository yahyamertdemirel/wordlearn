import 'package:flutter/material.dart';
import 'package:wordlearn/anasayfa.dart';
import 'package:wordlearn/main.dart';

class hakkinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Center(
          child: Text("Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen"
              " 3006881 kodlu MOBİL PROGRAMLAMA 3006881 dersi kapsamında 173006036 numaralı Yahya Mert Demirel "
              "tarafından 30 Nisan 2021 günü yapılmıştır.",style: TextStyle(color: Colors.black54),
          ),
        ),
        Center(
          child: (MaterialButton
            (
            height: 10,
            child: Text('Anaasayfa',style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500,),

            ),
            onPressed: () { Navigator.push(context,MaterialPageRoute(builder:(context)=>anasayfa()));},
          )
          ),
        ),


      ],
      );


  }
}