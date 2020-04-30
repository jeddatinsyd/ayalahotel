import 'package:flutter/material.dart';
import 'hotel_detail.dart';
class HotPackages extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
                height: MediaQuery.of(context).size.height / 2.5,
                child: Column(
                  children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Hot Packages",style: TextStyle(
                                color:Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),),
                              // Text("View All",style: TextStyle(
                              //   color: Color(0xFF18D191),
                              //   fontWeight:FontWeight.bold,

                              // ),),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: ListView(
                          padding: EdgeInsets.zero,
                          children: <Widget>[
                              //hot package #1
                              Container(
                                  margin: EdgeInsets.only(left: 16,right: 16,bottom: 16),
                                  height: MediaQuery.of(context).size.height / 5,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),

                                      )
                                    ]
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                        Expanded(
                                          flex: 4,
                                          child: Container( 
                                            decoration: BoxDecoration(

                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(16),bottomLeft: Radius.circular(16),),
                                              image:  DecorationImage(
                                                // image:NetworkImage(
                                                //     "https"
                                                // )
                                                image: new AssetImage("assets/6.png"),
                                                fit: BoxFit.cover,
                                              )
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 8,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                              
                                                  Text("Dorm Type Room Rates",style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold
                                                  ),),
                                                  SizedBox(height: 8,),
                                                  Row(
                                                    children: <Widget>[
                                                      //Icon(Icons.location_on,size: 16,),
                                                      // Text("Lorem, Ipsum",style: TextStyle(
                                                      //   color: Colors.black,
                                                      //   fontSize: 14
                                                      // ),)
                                                    ],
                                                  ),
                                                  SizedBox(height: 8,),
                                                  Text("\P1,000", style: TextStyle(
                                                    color: Colors.indigo,
                                                    fontWeight: FontWeight.bold,
                                                  ),),
                                                  
                                                  Container(
                                                    height: 48,
                                                    child: Row(
                                                      children: <Widget>[
                                                        Expanded(
                                                          flex: 1,
                                                          child: Container
                                                          (
                                                            margin: EdgeInsets.all(6),
                                                            decoration: BoxDecoration
                                                            (
                                                              borderRadius: BorderRadius.circular(4),
                                                              color: Colors.white,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  color: Colors.black.withOpacity(.1),
                                                                  blurRadius: 3,
                                                                  spreadRadius: 1
                                                                )
                                                              ]
                                                            ),
                                                            child: Center(child: Icon(Icons.local_taxi,color: Color(0xFF18D191),)),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: Container
                                                          (
                                                            margin: EdgeInsets.all(6),
                                                            decoration: BoxDecoration
                                                            (
                                                              borderRadius: BorderRadius.circular(4),
                                                              color: Colors.white,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  color: Colors.black.withOpacity(.1),
                                                                  blurRadius: 3,
                                                                  spreadRadius: 1
                                                                )
                                                              ]
                                                            ),
                                                            child: Center(child: Icon(Icons.notifications,color: Color(0xFF18D191),)),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: Container
                                                          (
                                                            margin: EdgeInsets.all(6),
                                                            decoration: BoxDecoration
                                                            (
                                                              borderRadius: BorderRadius.circular(4),
                                                              color: Colors.white,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  color: Colors.black.withOpacity(.1),
                                                                  blurRadius: 3,
                                                                  spreadRadius: 1
                                                                )
                                                              ]
                                                            ),
                                                            child: Center(child: Icon(Icons.tv,color: Color(0xFF18D191),)),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: Container
                                                          (
                                                            margin: EdgeInsets.all(6),
                                                            decoration: BoxDecoration
                                                            (
                                                              borderRadius: BorderRadius.circular(4),
                                                              color: Colors.white,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  color: Colors.black.withOpacity(.1),
                                                                  blurRadius: 3,
                                                                  spreadRadius: 1
                                                                )
                                                              ]
                                                            ),
                                                            child: Center(child: Icon(Icons.wifi,color: Color(0xFF18D191),)),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )    
                                              ],
                                            ),
                                          ),
                                        ),
                                        
                                        Expanded(
                                          flex: 3,
                                         
                                          child: GestureDetector
                                          (                        

                                              onTap: (){
                                                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                                                    return HotelDetail();
                                                  } ));
                                              },

                                              child: Container(
                                                margin: EdgeInsets.only(left:8,right: 8,top: 8,bottom: 8),
                                                decoration: BoxDecoration
                                                ( 
                                                  color: Color(0xFF18D191),
                                                  borderRadius: BorderRadius.circular(16)
                                                ),
                                                child: Center(
                                                  child: RotatedBox
                                                  (
                                                    child: Text("Book Now",style:TextStyle(
                                                      color:Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18
                                                    )),quarterTurns: 3,
                                                  ),
                                                ),
                                                
                                              ),
                                               
                                          ),
                                          
                                        )
                                    ],
                                  ),
                              ),
                              //hot package #2
                              Container(
                                  margin: EdgeInsets.only(left: 16,right: 16,bottom: 16),
                                  height: MediaQuery.of(context).size.height / 5,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),

                                      )
                                    ]
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                        Expanded(
                                          flex: 4,
                                          child: Container( 
                                            decoration: BoxDecoration(

                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(16),bottomLeft: Radius.circular(16),),
                                              image:  DecorationImage(
                                                // image:NetworkImage(
                                                //     "https"
                                                // )
                                                image: new AssetImage("assets/2.png"),
                                                fit: BoxFit.cover,
                                              )
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 8,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                              
                                                  Text("Standard",style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold
                                                  ),),
                                                  SizedBox(height: 8,),
                                                  Row(
                                                    children: <Widget>[
                                                      //Icon(Icons.location_on,size: 16,),
                                                      // Text("Kensington place",style: TextStyle(
                                                      //   color: Colors.black,
                                                      //   fontSize: 14
                                                      // ),)
                                                    ],
                                                  ),
                                                  SizedBox(height: 8,),
                                                  Text("\P500/night", style: TextStyle(
                                                    color: Colors.indigo,
                                                    fontWeight: FontWeight.bold,
                                                  ),),
                                                  
                                                  Container(
                                                    height: 48,
                                                    child: Row(
                                                      children: <Widget>[
                                                        Expanded(
                                                          flex: 1,
                                                          child: Container
                                                          (
                                                            margin: EdgeInsets.all(6),
                                                            decoration: BoxDecoration
                                                            (
                                                              borderRadius: BorderRadius.circular(4),
                                                              color: Colors.white,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  color: Colors.black.withOpacity(.1),
                                                                  blurRadius: 3,
                                                                  spreadRadius: 1
                                                                )
                                                              ]
                                                            ),
                                                            child: Center(child: Icon(Icons.local_taxi,color: Color(0xFF18D191),)),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: Container
                                                          (
                                                            margin: EdgeInsets.all(6),
                                                            decoration: BoxDecoration
                                                            (
                                                              borderRadius: BorderRadius.circular(4),
                                                              color: Colors.white,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  color: Colors.black.withOpacity(.1),
                                                                  blurRadius: 3,
                                                                  spreadRadius: 1
                                                                )
                                                              ]
                                                            ),
                                                            child: Center(child: Icon(Icons.notifications,color: Color(0xFF18D191),)),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: Container
                                                          (
                                                            margin: EdgeInsets.all(6),
                                                            decoration: BoxDecoration
                                                            (
                                                              borderRadius: BorderRadius.circular(4),
                                                              color: Colors.white,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  color: Colors.black.withOpacity(.1),
                                                                  blurRadius: 3,
                                                                  spreadRadius: 1
                                                                )
                                                              ]
                                                            ),
                                                            child: Center(child: Icon(Icons.tv,color: Color(0xFF18D191),)),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: Container
                                                          (
                                                            margin: EdgeInsets.all(6),
                                                            decoration: BoxDecoration
                                                            (
                                                              borderRadius: BorderRadius.circular(4),
                                                              color: Colors.white,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  color: Colors.black.withOpacity(.1),
                                                                  blurRadius: 3,
                                                                  spreadRadius: 1
                                                                )
                                                              ]
                                                            ),
                                                            child: Center(child: Icon(Icons.wifi,color: Color(0xFF18D191),)),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )    
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: GestureDetector
                                          (
                                                onTap: () {
                                                            // _login();
                                                  Navigator.push(context, MaterialPageRoute(
                                                  builder: (context) => HotelDetail(), ));
                                                },
                                                child: Container(
                                                  margin: EdgeInsets.only(left:8,right: 8,top: 8,bottom: 8),
                                                  decoration: BoxDecoration
                                                  (
                                                    color: Color(0xFF18D191),
                                                    borderRadius: BorderRadius.circular(16)
                                                  ),
                                            
                                                      child: Center(
                                                        child: RotatedBox
                                                        (
                                                          child: Text("Book Now",style:TextStyle(
                                                            color:Colors.white,
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 18
                                                          )),quarterTurns: 3,
                                                        ),
                                                      ),
                                                ),
                                          ),
                                        )
                                    ],
                                  ),
                              )
                              
                          ],
                        ),
                      )
                  ],
                ),
              );
  }
}