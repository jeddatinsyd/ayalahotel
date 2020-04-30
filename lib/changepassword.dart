import 'package:ayala_resort/HotelMain.dart';
import 'package:ayala_resort/account.dart';
import 'package:ayala_resort/dashboard.dart';
import 'package:ayala_resort/datepicker.dart';
import 'package:ayala_resort/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

//void main() => runApp(new MyApp());


class ChangePass extends StatefulWidget {
  final String id;
 
  ChangePass({Key key, this.id}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ChangePass> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
     //   title: new Text(widget.title),
       backgroundColor: Color(0xFF18D191),
            automaticallyImplyLeading: true, 
            elevation: 0.0,
            title: Text("Change Password"),
      ),
      body: new SafeArea(
          top: false,
          bottom: false,
          child: new Form(
            
              autovalidate: true,
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                 
                  SizedBox(height: 50.0,),
                  
                  TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Old Password',
                          ),
                          validator: (String value) {
                            if (value.trim().isEmpty) {
                              return 'Old Password';
                            }
                          },
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'New Password',
                    ),
                    validator: (String value) {
                      if (value.trim().isEmpty) {
                        return 'New Password is required';
                      }
                    },
                  ),
                  const SizedBox(height: 16.0),

            
                
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Confirm Password',
                    ),
                    validator: (String value) {
                      if (value.trim().isEmpty) {
                        return 'Confirm Password is required';
                      }
                    },
                  ), 
                   
                  new Container(
                      padding: const EdgeInsets.only(left: 20.0, top: 20.0,right: 40),
                      child: new RaisedButton(
                        child: const Text('Save'),
                        onPressed: (){  
                        //  confirm();
                        
                          //Navigator.pop(context);
                          Navigator.push(context,MaterialPageRoute(builder: (context){
                            return new Account();
                          }));
                        
                        },
                        color: Color(0xFF18D191),
                        textColor: Colors.white,
                      )),
                ],
              ))),
    );
  }
}