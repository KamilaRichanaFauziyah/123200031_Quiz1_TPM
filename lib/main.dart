import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Screen'),
          titleSpacing: 12,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.green,
                    Colors.blue,
                  ]),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    _logo(),
                    _titleDescription(),
                    _email(),
                    _password(),
                    _loginbutton(),
                    _forgotlabel(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _logo() {
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 150),
      ),
      FlutterLogo(
        size: 50,
        curve: Curves.bounceInOut,
      ),
    ]);
  }

  Widget _titleDescription() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20),
        ),
        Text(
          'Welcome to Flutter,',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xf21C2842),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          'Please enter your email and password',
          style: TextStyle(
            fontSize: 14,
            color: Color(0xf21C2842),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _email() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 12),
        ),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          decoration: InputDecoration(
            hintText: 'kam@gmail.com',
            hintStyle: TextStyle(color: Colors.grey),
            labelText: 'Email',
            contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(29.9)),
          ),
        )
      ],
    );
  }

  Widget _password() {
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 12),
      ),
      TextFormField(
        autofocus: false,
        decoration: InputDecoration(
          hintText: 'Abcd21.',
          hintStyle: TextStyle(color: Colors.grey),
          labelText: 'Password',
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(29.9)),
        ),
      ),
    ]);
  }

  Widget _loginbutton() {
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16),
      ),
      SizedBox(
        height: 35,
        width: 2000,
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Login"),
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xf21C2842),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
        ),
      ),
    ]);
  }

  Widget _forgotlabel() {
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 8),
      ),
      TextButton(
        onPressed: () {},
        child: Text(
          'Forgot Password?',
          style: TextStyle(color: Colors.black26, fontWeight: FontWeight.w600),
        ),
      ),
    ]);
  }
}
