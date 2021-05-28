import 'package:firebase_app/routes/login.dart';
import 'package:flutter/material.dart';

class Myhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Home'),
      ),
      body: Stack(children: <Widget>[
        Container(
            height: deviceHeight,
            width: deviceWidth,
            color: Colors.black,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  /* Container(
                color: Colors.deepPurpleAccent,
                child: Text('Welcome'),
              ),*/
                  SizedBox(height: 10),
                  Material(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(5),
                    elevation: 10,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'register');
                      },
                      child: Text('     Register     '),
                    ),
                  ),
                  SizedBox(height: 10),
                  Material(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(5),
                    elevation: 10,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'login');
                      },
                      child: Text('     Login     '),
                    ),
                  )
                ],
              ),
            )),
      ]),
    );
  }
}
