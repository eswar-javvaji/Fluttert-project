import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    var username;
    var password;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Login Page'),
      ),
      body: Container(
        child: Stack(children: <Widget>[
          Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: deviceWidth * 0.80,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'User name...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onChanged: (value) {
                        username = value;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: deviceWidth * 0.80,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Password...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusColor: Colors.orangeAccent),
                      onChanged: (value) {
                        password = value;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Material(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(20),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'main body');

                        print(username);
                        print(password);
                      },
                      child: Text('Login'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
