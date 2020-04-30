import 'dart:convert';
import 'package:flutter/material.dart';
import 'HotelMain.dart';
import 'package:http/http.dart' as http;
import 'dashboard.dart';
import 'signup.dart';
//void main() => runApp(Login());

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController user = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  String msg = '';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:  AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          elevation: 0.0,
          iconTheme: new IconThemeData(color: Colors.grey)),
          
            body: Container 
            (
            //  decoration: new BoxDecoration(color: Colors.red),
              child: SingleChildScrollView(
                
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      
                      new SizedBox(height: 30.0,),
                          //new StackedIcons(),
                          // SizedBox(height: 155.0, child: Image.asset("assets/pregma.png",fit:BoxFit.contain,),
                          // SizedBox(height: 50.0,),

                          SizedBox(
                                  height: 155.0,
                                  child: Image.asset("assets/marawi.png",fit:BoxFit.contain,),
                              ),

                            Padding
                            (
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                                child: new TextField(
                                  //controller: user,
                                  decoration: new InputDecoration(labelText: 'LOGIN ID'),
                                ),
                            ),
                            new SizedBox(height: 15.0,),
                            Padding
                            (
                                      padding:
                                      const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                                      child: new TextField(
                                          controller: pass,
                                          obscureText: true,
                                          decoration: new InputDecoration(labelText: 'PASSWORD'),
                                      ),
                            ),

                            new Row(
                              children: <Widget>[
                                       Expanded(
                                              child: Padding( 
                                                      padding: const EdgeInsets.only(
                                                      left: 20.0, right: 20.0, top: 10.0),
                                                      child: GestureDetector
                                                      (
                                                            // onTap: () {
                                                            //    Navigator.push(context, MaterialPageRoute(
                                                            //      builder: (context) => Dashboard2(),
                                                            //   //   builder: (context) => _login(),
                                                            //    ));
                                                            // //    _login();
                                                            // },
                                                            onTap: () {
                                                            // _login();
                                                                Navigator.pushReplacement(context, MaterialPageRoute(
                                                                   builder: (context) => Dashboard(), ));
                                                                  //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => new HotelMain()));
                                                                   
                                                            },
                                                            child: new Container
                                                            (
                                                              alignment: Alignment.center,
                                                              height: 60.0,
                                                              decoration: new BoxDecoration(
                                                                  color: Color(0xFF18D191),
                                                                  borderRadius: new BorderRadius.circular(10.0)),
                                                                  child: new Text("Login",
                                                                        style: new TextStyle(
                                                                        fontSize: 20.0, color: Colors.white),
                                                                  ),
                                                            ),
                                                      
                                                      ),
                                                  ),
                                          )
                                        ],
                                ),

                                  new Row(
                              children: <Widget>[
                                       Expanded(
                                              child: Padding( 
                                                      padding: const EdgeInsets.only(
                                                      left: 20.0, right: 20.0, top: 10.0),
                                                      child: GestureDetector
                                                      (
                                                            // onTap: () {
                                                            //    Navigator.push(context, MaterialPageRoute(
                                                            //      builder: (context) => Dashboard2(),
                                                            //   //   builder: (context) => _login(),
                                                            //    ));
                                                            // //    _login();
                                                            // },
                                                            onTap: () {
                                                            // _login();
                                                                Navigator.push(context, MaterialPageRoute(
                                                                   builder: (context) => Signup(), ));
                                                            },
                                                            child: new Container
                                                            (
                                                              alignment: Alignment.center,
                                                              height: 60.0,
                                                              decoration: new BoxDecoration(
                                                                  color: Colors.white,
                                                                  borderRadius: new BorderRadius.circular(10.0)),
                                                                  child: new Text("Sign up",
                                                                        style: new TextStyle(
                                                                        fontSize: 20.0, color:  Color(0xFF18D191)),
                                                                  ),
                                                            ),
                                                      
                                                      ),
                                                  ),
                                          )
                                        ],
                                ), 
                            new Row(
                                    children: <Widget>[
                                        Expanded(
                                            child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, right: 20.0, top: 10.0),
                                          child: new Container(
                                            alignment: Alignment.center,
                                            height: 60.0,
                                            child: new Text(
                                              msg,
                                              style: new TextStyle(fontSize: 20.0, color: Colors.red),
                                            ),
                                          ),
                                        ))
                                      ],
                              ),

                              

                    ]),
                    ),
                ),
    );
  }
}