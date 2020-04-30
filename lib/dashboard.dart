import 'package:flutter/material.dart';
import 'HotelMain.dart' as hotelmain;
import 'VenueMain.dart' as venuemain;
import 'restaurant.dart' as restaurantmain;
import 'bakery.dart' as bakerymain;
import 'account.dart' as accountmain;

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashPage(),
    );
  }
}

class DashPage extends StatefulWidget{
  @override
  _DashPageState createState() => _DashPageState();
}

class _DashPageState extends State<DashPage> with SingleTickerProviderStateMixin{

  TabController controller;
   int currentIndex=0;

  // Widget _buildBottomNavBar(){
  //   return BottomNavigationBar(

       
  //       elevation: 9,
  //       currentIndex: currentIndex,
  //       type: BottomNavigationBarType.fixed,
  //       onTap: (newValue){
  //         setState(() {
  //           currentIndex=newValue;
  //         });
  //       },
  //       selectedItemColor: Color(0xFF18D191),
  //       items: [
  //         BottomNavigationBarItem(icon:Icon(Icons.hotel), title: Text("Hotel",style: TextStyle(
  //           fontWeight: FontWeight.bold,
  //         ),)),
  //         BottomNavigationBarItem(icon:Icon(Icons.place), title: Text("Venue",style: TextStyle(
  //            fontWeight: FontWeight.bold,
  //         ),)),
  //         BottomNavigationBarItem(icon:Icon(Icons.restaurant), title: Text("Restaurant",style: TextStyle(
  //           fontWeight: FontWeight.bold,
  //         ),)),
  //         BottomNavigationBarItem(icon:Icon(Icons.store), title: Text("Bakery",style: TextStyle(
  //           fontWeight: FontWeight.bold,
  //         ),)),
  //         BottomNavigationBarItem(icon:Icon(Icons.settings), title: Text("Settings", style: TextStyle(
  //            fontWeight: FontWeight.bold,
  //         ),)),
  //       ],
  //     );
  // }
  @override
  void initState()
  {
    super.initState();
    controller = new TabController(vsync: this,length: 5);
  }

  @override
  void dispose()
  {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
     
        return new Scaffold
        (   
            bottomNavigationBar: new Material
            (
              
              color: Colors.white10,
              child: new TabBar(
                  controller: controller,
                  tabs: <Widget>[
                    new Tab( icon: new Icon(Icons.home,color: Color(0xFF18D191),)),
                    new Tab(icon: new Icon(Icons.place,color: Color(0xFF18D191),)),
                     new Tab(icon: new Icon(Icons.restaurant,color: Color(0xFF18D191),)),
                    new Tab(icon: new Icon(Icons.store,color: Color(0xFF18D191),)),
                    new Tab(icon: new Icon(Icons.menu,color: Color(0xFF18D191),)),
                  ],
                )
            ),
            body: new TabBarView
            (
                controller:controller,
                children: <Widget>[
                new hotelmain.HotelMain(),
                new venuemain.VenueMain(),
                new restaurantmain.Restaurant(),
                new bakerymain.Bakery(),
                new accountmain.Account(),
              ],
            ),
        );
  }
}

