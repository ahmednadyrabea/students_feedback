import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.lightBlueAccent[700],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SafeArea(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('images/october6icon.png'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Courses Feedback',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontStyle: FontStyle.italic)),
          SizedBox(
            height: 10.0,
          ),
          Container(),
          SizedBox(
            height: 10.0,
          ),
          Column(
            //Email text box
            children: <Widget>[
              Container(
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    labelText: 'Enter Your Email',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.orange[600],
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              )
            ],
          ), //Email Text Box
          SizedBox(
            height: 10.0,
          ),
          Column(
            //Email text box
            children: <Widget>[
              Container(
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    labelText: 'Enter Your Password',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.orange[600],
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ],
          ), //Password Text Box
          (
            Container(
              alignment: Alignment.centerRight,
              child:FlatButton(
                    onPressed:()=>print('Forgot Password Button is Pressed'),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.white),
                    ))
              ,
            )
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            alignment: Alignment.center,
            width: 100,
            height: 50,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              onPressed: () => (print('Log In Button Is Pressed')),
              child: Center(
                child: Text(
                  'Log In',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              color: Colors.orange[600],
            ),
          )
        ],
      ),
    )));
  }
}
