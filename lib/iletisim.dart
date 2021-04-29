import 'package:flutter/material.dart';


class iletisim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'OrelegaOne'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircleAvatar(radius: 70,

                backgroundImage: AssetImage('assets/fotograf/iletisimm.png'),
              ),
              Text('Notet ',style: TextStyle(fontSize: 30,fontFamily:'OrelegaOne',color: Colors.black54),
              ),
              Container(
                padding: EdgeInsets.all( 5),
                margin: EdgeInsets.symmetric(horizontal: 20),
                color: Colors.green,

                child: Row(
                  children: <Widget>[
                    Icon(Icons.email,size: 40,
                    ),
                    SizedBox(width: 5,),
                    Text('notet@gmail.com',style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),
              SizedBox(height: 10,),

              Container(
                padding: EdgeInsets.all((10)),
                margin: EdgeInsets.symmetric(horizontal: 20),
                color: Colors.green,
                child: Row(children: <Widget>[
                  Icon(Icons.phone,size: 40,
                  ),
                  Text('+90 888 88 88',style: TextStyle(fontSize: 20),
                  ),


                ],),
              )

            ],
          ),
        ),),
      ),
    );
  }
}
