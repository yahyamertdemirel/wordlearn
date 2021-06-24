import 'package:flutter/material.dart';
import 'package:wordlearn/hakkinda.dart';

class ayarlar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(

          children: [
            SizedBox(height: 50),
            Container(width: 450,
              child:  MaterialButton(

                height: 50,

                child: Text("Bildirim Ayarları"),
                elevation: 50,
                textColor: Colors.yellow,
                color: Colors.blue,
                onPressed: () {
                },
              ),
            ),
            SizedBox(height: 20),

            Container(width: 450,
              child:  MaterialButton(
                height: 50,
                child: Text("Güvenlik Ayarkarı"),
                elevation: 100,
                textColor: Colors.yellow,
                color: Colors.blue,
                onPressed: () {
                },
              ),
            ),
            SizedBox(height: 20),

            Container(
              width: 450,
              child:  MaterialButton(
                height: 50,

                child: Text("Gizlilik"),
                elevation: 100,
                textColor: Colors.yellow,
                color: Colors.blue,
                onPressed: () {
                },
              ),
            ),
            SizedBox(height: 20),

            Container(width: 450,
              child:  MaterialButton(
                height: 50,
                child: Text("Hakkında"),
                elevation: 100,
                textColor: Colors.yellow,
                color: Colors.blue,
                onPressed: () { Navigator.push(context,MaterialPageRoute(builder:(context)=>hakkinda()));
                },
              ),
            ),
          ],


          ),


    );
  }
}
