import 'package:ayala_resort/bakery.dart';
import 'package:ayala_resort/mycart.dart';
import 'package:flutter/material.dart';

class BakedOrder extends StatefulWidget {
  @override
  _FoodOrderState createState() => _FoodOrderState();
}

class _FoodOrderState extends State<BakedOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(
     //   title: new Text(widget.title),
       backgroundColor: Color(0xFF18D191),
            automaticallyImplyLeading: true, 
            elevation: 0.0,
            title: Text("Order Reservation"),
      ),
      body: new SafeArea(
          // top: false,
          // bottom: false,
          child: new Form(
            
              autovalidate: true,
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                 
                  SizedBox(height: 50.0,),
                
                  const SizedBox(height: 50.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Quantity',
                    ),
                    validator: (String value) {
                      if (value.trim().isEmpty) {
                        return 'No. of quantity';
                      }
                    },
                  ), 

                 
                  new Container(
                      padding: const EdgeInsets.only(left: 20.0, top: 20.0,right: 20.0),
                      child: new RaisedButton(
                        child: const Text('Add to Cart'),
                        onPressed: (){  
                            //  Navigator.of(context).push(
                            //      MaterialPageRoute(builder: (BuildContext context)=> MyCart()), 
                            // );
                        },
                        color: Color(0xFF18D191),
                        textColor: Colors.white,
                      )),
                ],
              ))),

    );
  }
}
