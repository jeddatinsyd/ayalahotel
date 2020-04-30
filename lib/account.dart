import 'package:ayala_resort/aboutus.dart';
import 'package:ayala_resort/changepassword.dart';
import 'package:ayala_resort/login.dart';
import 'package:ayala_resort/profile_edit.dart';
import 'package:ayala_resort/reservationlist.dart';
import 'package:flutter/material.dart';
import 'aboutus.dart';
class Account extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override

    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 0.1,
            backgroundColor: Color(0xFF18D191),
            title:  Text("My Account",style: TextStyle(color: Colors.white)),
            actions: <Widget>[

            //  Text("Edit Account"),
            GestureDetector(
              // onTap: (){
              //   // Navigator.push(context, MaterialPageRoute(builder: (context){
              //   //   return Profile();
              //   // }));
              // },
                child:IconButton(
                  icon: Icon(Icons.person,color: Colors.white,size: 30,),
                  onPressed: () {

                       Navigator.push(context, MaterialPageRoute(
                         builder: (context) => Profile(), ));
                  },
                )
            )
      ],
        ),
        body: 
        new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
          child: new Column(
            children: <Widget>[
              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Welcome, Abdani", style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),),
                                    
                                  ],
                                ),
              SizedBox(height: 20,),
            GestureDetector(
            child:Card(
            elevation: 8.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Container
            (
                 decoration: BoxDecoration(color: Colors.white),
                 child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                        leading: Container(
                                padding: EdgeInsets.only(right: 12.0),
                                decoration: new BoxDecoration(
                                    border: new Border(
                                        right: new BorderSide(width: 1.0, color: Colors.black))),
                                child: Icon(Icons.bookmark, color: Colors.black),
                         ),

                        title: Text(
                                  "My Order/Reservation",
                                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        
                        trailing:
                        Icon(Icons.keyboard_arrow_right, color: Colors.black, size: 30.0)
                 ),   
            ),
          ),
           onTap: ()=>
          Navigator.of(context).push(
                                 MaterialPageRoute(builder: (BuildContext context)=> ReserveList()), 
                      )
          ),
         // SizedBox(height: 20,),
          GestureDetector (
          child: Card(
            elevation: 8.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Container
            (
                 decoration: BoxDecoration(color:  Colors.white),
                 child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                        leading: Container(
                                padding: EdgeInsets.only(right: 12.0),
                                decoration: new BoxDecoration(
                                    border: new Border(
                                        right: new BorderSide(width: 1.0, color: Colors.black))),
                                child: Icon(Icons.group, color: Colors.black),
                         ),

                        title: Text(
                                  "About Us",
                                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        
                        trailing:
                        Icon(Icons.keyboard_arrow_right, color: Colors.black, size: 30.0)
                 ),   
            ),
          ),
          onTap: ()=>
          Navigator.of(context).push(
                                 MaterialPageRoute(builder: (BuildContext context)=> Aboutus()), 
                      )
        //  Navigator.of(context, rootNavigator: true).pushReplacement(MaterialPageRoute(builder: (context) => new Aboutus())),
          ),

          new Card(
            elevation: 8.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Container
            (
                 decoration: BoxDecoration(color:  Colors.white),
                 child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                        leading: Container(
                                padding: EdgeInsets.only(right: 12.0),
                                decoration: new BoxDecoration(
                                    border: new Border(
                                        right: new BorderSide(width: 1.0, color: Colors.black))),
                                child: Icon(Icons.navigation, color: Colors.black),
                         ),

                        title: Text(
                                  "Location Map",
                                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        
                        trailing:
                        Icon(Icons.keyboard_arrow_right, color: Colors.black, size: 30.0)
                 ),   
            ),
          ),
            GestureDetector (
          child: Card(
            elevation: 8.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Container
            (
                 decoration: BoxDecoration(color:  Colors.white),
                 child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                        leading: Container(
                                padding: EdgeInsets.only(right: 12.0),
                                decoration: new BoxDecoration(
                                    border: new Border(
                                        right: new BorderSide(width: 1.0, color: Colors.black))),
                                child: Icon(Icons.security, color: Colors.black),
                         ),

                        title: Text(
                                  "Change Password",
                                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        
                        trailing:
                        Icon(Icons.keyboard_arrow_right, color: Colors.black, size: 30.0)
                 ),   
            ),
          ),
          onTap: ()=>
          Navigator.of(context).push(
                                 MaterialPageRoute(builder: (BuildContext context)=> ChangePass()), 
                      )
       
          ),
          GestureDetector (
          child: Card(
            
            elevation: 8.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Container
            (
              
                 decoration: BoxDecoration(color:  Colors.white),
                 child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                        leading: Container(
                                padding: EdgeInsets.only(right: 12.0),
                                decoration: new BoxDecoration(
                                    border: new Border(
                                        right: new BorderSide(width: 1.0, color: Colors.black))),
                                child: Icon(Icons.settings_power, color: Colors.black),
                         ),

                        title: Text(
                                  "Logout",
                                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        
                        trailing:
                        Icon(Icons.keyboard_arrow_right, color: Colors.black, size: 30.0)
                 ),   
            ),
          ),
            
            onTap: ()=>

            Navigator.of(context, rootNavigator: true).pushReplacement(MaterialPageRoute(builder: (context) => new Login())),
          
          )

            ],
          ),
          ),
        ),
        
      );
  }
}