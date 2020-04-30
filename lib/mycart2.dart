import 'package:flutter/material.dart';
import 'mycart_bake.dart' as mycart_bake;
import 'mycart_restaurant.dart' as mycart_restaurant;



class MyCart2 extends StatefulWidget {
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart2> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState(){
    super.initState();
    controller = new TabController(vsync: this,length: 2);
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
            title: Text("My Cart"),
             bottom: new TabBar(
                 controller: controller,
                 tabs: <Widget>[
                   new Tab(text: "RESTAURANT FOOD",),
                   new Tab(text: "BAKED FOOD",),
                 ],
               ),
      ),

      body: new TabBarView(
            controller: controller,
            children: <Widget>[
            
            new mycart_restaurant.CartRestaurant(),
            new mycart_bake.CartBaked(),
           
            ],
      )
      
  
    );
  }
}
