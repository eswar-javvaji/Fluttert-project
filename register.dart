import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var username;
    var password;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Registration Page'),
      ),
      body: Center(
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
                    Navigator.pushNamed(context, 'login');
                    print(username);
                    print(password);
                  },
                  child: Text('Register'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
