import 'package:ayala_resort/HotelMain.dart';
import 'package:ayala_resort/dashboard.dart';
import 'package:ayala_resort/datepicker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'dashboard.dart';

class Aboutus extends StatefulWidget {
  final String id;
 
  Aboutus({Key key, this.id}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Aboutus> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
   
          backgroundColor: Color(0xFF18D191),
            automaticallyImplyLeading: true, 
            elevation: 0.0,
            title: Text("About us"),
            
      ),
      body: 
          new Container(
          padding: new EdgeInsets.all(32.0),

           child: new Column(
             children: <Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                                    Text("Marawi Resort Hotel", style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    SizedBox(height: 20,),

                                    Text("The proposed mobile application is a student project that made to promote the Marawi Resort Hotel, a self generating corporation that also promotes the beautiful land of Marawi and Lanao Del Sur. The application made for useful for users to perform online hotel room reservation without visiting the hotel.", style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                     SizedBox(height: 40,),
                                    
                                     Text("Developed by: \nAbdani S. Macalipot \nYussuf M. Abdulghani \nMesug M. Hadji Omar Jr. \nDCS - AL Khwarizmi International College", style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),),


                                    
                  ],

              )
             ],
           )   
          
          )

    );
  }
}