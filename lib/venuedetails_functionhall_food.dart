import 'package:flutter/material.dart';
import 'venuefood_meal.dart' as meal;
import 'venuefood_snack.dart' as snack;
import 'venuefood_dessert.dart' as dessert;
class VenueDetailsFood extends StatefulWidget {
  @override
  _VenueDetailsState createState() => _VenueDetailsState();
}

class _VenueDetailsState extends State<VenueDetailsFood> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState(){
    super.initState();
    controller = new TabController(vsync: this,length: 3);
  }
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(
     //   title: new Text(widget.title),
       backgroundColor: Color(0xFF18D191),
            automaticallyImplyLeading: true, 
            elevation: 0.0,
            title: Text("Available Food"),
             bottom: new TabBar(
                 controller: controller,
                 tabs: <Widget>[
                   new Tab(text: "MEAL",),
                   new Tab(text: "SNACK",),
                    new Tab(text: "DESSERT",),
                 ],
               ),
      ),

      body: new TabBarView(
            controller: controller,
            children: <Widget>[
             new meal.MealFood(),
             new snack.SnackFood(),
             new dessert.DessertFood(),
            ],
      )
      
  
    );
  }
}
