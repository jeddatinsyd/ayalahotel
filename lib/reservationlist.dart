import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReserveList(),
    );
  }
}

class ReserveList extends StatefulWidget{

  String student_id;  
  ReserveList({Key key,this.student_id}) : super(key:key);
  
  @override
  _reserveState createState() => _reserveState();
} 

ReserveList std = new ReserveList();

class _reserveState extends State<ReserveList>{

  @override
  Widget build(BuildContext context){
    return  Scaffold(
          appBar: AppBar(
            //0xffff3266
            backgroundColor: Color(0xFF18D191),
            automaticallyImplyLeading: true, 
            elevation: 0.0,
            title: Text("My Order/Reserve List"),
          ), 
        
        
        body: Center(child: BodyLayout()),
  
    );
  }
}
    
    class BodyLayout extends StatelessWidget {
      @override
      
      Widget build(BuildContext context) {
        return ListView(
          
        children: <Widget>[
          
          SizedBox(height: 20,),
          
          ListTile(
            leading: Icon(Icons.show_chart),
            title: Text('Function Hall Reservation'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            
            leading: Icon(Icons.show_chart),
            title: Text('Torogan'),
            
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.show_chart),
            title: Text('Maranao Standard'),
            trailing:Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.show_chart),
            title: Text('Pagana Reservation'),
            trailing:Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.show_chart),
            title: Text('Baked Bread'),
            trailing:Icon(Icons.keyboard_arrow_right),
          ),
           ListTile(
            leading: Icon(Icons.show_chart),
            title: Text('Salad Macaroni'),
            trailing:Icon(Icons.keyboard_arrow_right),
          ),
        ],
      );
      }
    }


