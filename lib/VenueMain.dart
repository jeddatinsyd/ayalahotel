import 'package:flutter/material.dart';
import 'venuedetails1_functionhall.dart';
import 'venuedetails2_pagana.dart';
import 'venuedetails3_pool.dart';
import 'package:carousel_pro/carousel_pro.dart';
class VenueMain extends StatelessWidget {
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
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            
            
                
                 Container(
                  margin: EdgeInsets.all(25.0),
                  child: Column(
                            children: <Widget>[
                              Text(
                                      "Function Hall",
                                      style: TextStyle(
                                          fontSize: 24.0, fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(height: 10,),
                              Material(
                                elevation: 10.0,
                                borderRadius: BorderRadius.circular(20.0),
                              

                                child: Stack(
                                  children: <Widget>[

                            Container(
                              height: 250,
                              child: Carousel(
                                boxFit: BoxFit.fill,
                                images: [
                                  AssetImage('assets/fh1.png'),
                                  AssetImage('assets/fh2.png'),
                                  AssetImage('assets/fh3.png'),
                                ],
                                indicatorBgPadding: 5.0,
                                autoplay: false,

                              ),
                            ),
      
                           ],

                        ),
                      ),

                      
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        
                        padding: EdgeInsets.symmetric(horizontal: 120.0),
                
                
                child:GestureDetector(
                onTap: () {
                   Navigator.push(context,
                      MaterialPageRoute(builder: (context) => VenueDetails()));
                },
                
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            
                            Spacer(),
                            
                            // Text(
                            //   "Reserve Now",
                            //   style: TextStyle(
                            //    //   decoration: TextDecoration.underline,
                            //       color: Color(0xFF18D191),
                            //       fontSize: 18.0,
                            //       fontWeight: FontWeight.w600,),
                            // )
                            new Container
                            (
                              
                              alignment: Alignment.center,
                              height: 40.0,
                              decoration: new BoxDecoration(
                              color: Color(0xFF18D191),
                              borderRadius: new BorderRadius.circular(5.0)),
                              child: new Text("    Reserve     ",
                              style: new TextStyle(
                                fontSize: 20.0, color: Colors.white),
                              ),
                            ),



                          ],
                          ),
                        ),
                      )
                    ],
                  ),
            ),
            
            
           
            Container(
              margin: EdgeInsets.all(25.0),
              child: Column(
                children: <Widget>[
                   Text(
                          "Pagana",
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.w600),
                        ),
                          SizedBox(height: 10,),
                  Material(
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(20.0),
                    // child: ClipRRect(
                    //   borderRadius: new BorderRadius.circular(20.0),
                      
                    //   child: Image.asset('assets/party.png',height: 250,width: 400,),
                    // ),
                       child: Stack(
                                  children: <Widget>[

                            Container(
                              height: 250,
                              child: Carousel(
                                boxFit: BoxFit.fill,
                                images: [
                                  AssetImage('assets/q1.png'),
                                  AssetImage('assets/q2.png'),
                                  AssetImage('assets/q3.png'),
                                ],
                                indicatorBgPadding: 5.0,
                                autoplay: false,

                              ),
                            ),
      
                           ],

                        ),
                  
                  
                  
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 120.0),
                    child: GestureDetector(
                onTap: () {
                   Navigator.push(context,
                     MaterialPageRoute(builder: (context) => VenueDetails2()));
                },
                    child: Row(
                      children: <Widget>[
                       
                        Spacer(),
                        // Text(
                        //   "Reserve Now",
                        //   style: TextStyle(
                        //       decoration: TextDecoration.underline,
                        //       color: Color(0xffFD8349),
                        //       fontSize: 16.0,
                        //       fontWeight: FontWeight.w600),
                        // )

                        new Container
                            (
                              
                              alignment: Alignment.center,
                              height: 40.0,
                              decoration: new BoxDecoration(
                              color: Color(0xFF18D191),
                              borderRadius: new BorderRadius.circular(5.0)),
                              child: new Text("    Reserve     ",
                              style: new TextStyle(
                                fontSize: 20.0, color: Colors.white),
                              ),
                            ),
                      ],
                    ),
                     ),
                  )
                ],
              ),
            ),
            
            //pool

            Container(
              margin: EdgeInsets.all(25.0),
              child: Column(
                children: <Widget>[
                  Text(
                          "Pool",
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                    height: 10.0,
                  ),
                  // Material(
                  //   elevation: 10.0,
                  //   borderRadius: BorderRadius.circular(20.0),
                  //   child: ClipRRect(
                  //     borderRadius: new BorderRadius.circular(20.0),
                  //     // child: Image.network(
                  //     //   "https://paulunderhill.com/wp-content/uploads/2012/02/music-photographer-gig-photos.jpg",
                  //     //   height: 450.0,
                  //     //   fit: BoxFit.cover,
                  //     // ),
                  //     child: Image.asset('assets/poolp.png',height: 250,),
                  //   ),
                  // ),
                    Material(
                                elevation: 10.0,
                                borderRadius: BorderRadius.circular(20.0),
                              

                                child: Stack(
                                  children: <Widget>[

                            Container(
                              height: 250,
                              child: Carousel(
                                boxFit: BoxFit.fill,
                                images: [
                                  AssetImage('assets/p1.png'),
                                  AssetImage('assets/p2.png'),
                                  AssetImage('assets/p3.png'),
                                ],
                                indicatorBgPadding: 5.0,
                                autoplay: false,

                              ),
                            ),
      
                           ],

                        ),
                      ),



                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                         
                    padding: EdgeInsets.symmetric(horizontal: 120.0),
                   child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => VenueDetails3()));
                            },
                    child: Row(
                      children: <Widget>[
                       
                        Spacer(),
                           new Container
                            (
                              
                              alignment: Alignment.center,
                              height: 40.0,
                              decoration: new BoxDecoration(
                              color: Color(0xFF18D191),
                              borderRadius: new BorderRadius.circular(5.0)),
                              child: new Text("    Reserve     ",
                              style: new TextStyle(
                                fontSize: 20.0, color: Colors.white),
                              ),
                            ),
                      ],
                    ),
                     ),
                  )
                ],
              ),
            ),
              
           




          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
