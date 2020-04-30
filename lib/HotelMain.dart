import 'package:flutter/material.dart';
import 'popular_room.dart';
import 'top_widget.dart';
import 'hot_packages.dart';

class HotelMain extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget{
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  
  int currentIndex=0;
  TextEditingController _textEditingController = TextEditingController();

  Widget _buildBottomNavBar(){
    return BottomNavigationBar(
        elevation: 9,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed, 
        onTap: (newValue){
          setState(() {
            currentIndex=newValue;
          });
        },
        selectedItemColor: Color(0xFF18D191),
        items: [
          BottomNavigationBarItem
          (
              icon:Icon(Icons.hotel), 
              title: 
              Text
              (
                "Hotel",style: TextStyle(fontWeight: FontWeight.bold,),
              )
          ),
          BottomNavigationBarItem(icon:Icon(Icons.place), title: Text("Venue",style: TextStyle(
             fontWeight: FontWeight.bold,
          ),)),
          BottomNavigationBarItem(icon:Icon(Icons.restaurant), title: Text("Restaurant",style: TextStyle(
            fontWeight: FontWeight.bold,
          ),)),
          BottomNavigationBarItem(icon:Icon(Icons.store), title: Text("Bakery",style: TextStyle(
            fontWeight: FontWeight.bold,
          ),)),
          BottomNavigationBarItem(icon:Icon(Icons.settings), title: Text("Settings", style: TextStyle(
             fontWeight: FontWeight.bold,
          ),)),
        ],
      );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
              // SafeArea(
              //   top: true,
              //   left: true,
              //   right: true,
              //   child: Container(),
              // ),
              TopWidget(
                textEditingController: _textEditingController,
              ),
            //  SizedBox(height: 5,),
              PopularRoom(),
              HotPackages()
          ],
        ),
      ),

      //bottomNavigationBar: _buildBottomNavBar(), 
    );
  }
}