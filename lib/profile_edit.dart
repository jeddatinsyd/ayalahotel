import 'package:ayala_resort/HotelMain.dart';
import 'package:ayala_resort/account.dart';
import 'package:ayala_resort/dashboard.dart';
import 'package:ayala_resort/datepicker.dart';
import 'package:ayala_resort/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

//void main() => runApp(new MyApp());


class Profile extends StatefulWidget {
  final String id;
 
  Profile({Key key, this.id}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
     //   title: new Text(widget.title),
       backgroundColor: Color(0xFF18D191),
            automaticallyImplyLeading: true, 
            elevation: 0.0,
            title: Text("Profile"),
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
                            labelText: 'Name',
                          ),
                          validator: (String value) {
                            if (value.trim().isEmpty) {
                              return 'Name is required';
                            }
                          },
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Last name',
                    ),
                    validator: (String value) {
                      if (value.trim().isEmpty) {
                        return 'Last name is required';
                      }
                    },
                  ),
                  const SizedBox(height: 16.0),

            
                  const SizedBox(height: 16.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Contact',
                    ),
                    validator: (String value) {
                      if (value.trim().isEmpty) {
                        return 'Contact is required';
                      }
                    },
                  ),
                   const SizedBox(height: 16.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Username',
                    ),
                    validator: (String value) {
                      if (value.trim().isEmpty) {
                        return 'Username is required';
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