import 'package:ayala_resort/hotel_detail.dart';
import 'package:flutter/material.dart';

class PopularRoom extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Container(
                height: MediaQuery.of(context).size.height/3,
                padding: EdgeInsets.only(left: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Text("Cottages",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                        ),)),  
                      Expanded(
                        flex: 8,
                        child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            
                            //Hotel list
                            //hotel 1
                            InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                                  return HotelDetail();
                                } ));
                              },
                              child:Container(
                                    margin: EdgeInsets.only(right:24,top:8,bottom:8),
                                    width: 140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.white,
                                      ),
                                    
                                    child: Column(
                                      children: <Widget>[
                                        Expanded
                                        (
                                          flex: 8,
                                          child: Container
                                          (
                                            decoration: BoxDecoration
                                            (
                                                image: DecorationImage
                                                (
                                                 //   image: NetworkImage("https://cdn.pixabay.com/photo/2016/10/18/09/02/hotel"),
                                                    // Image.asset("assets/1.jpeg",fit:BoxFit.contafitin,)
                                                    //image: new AssetImage("assets/3.jpg")
                                                    image: new AssetImage("assets/1.png")
                                                  
                                                ),
                                              
                                                  borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(16),
                                                  topRight: Radius.circular(16),
                                                )    
                                            ),
                                          )
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("Standard",style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold
                                                ),),
                                                // Text("Lorem, Ipsum",style: TextStyle(
                                                //   fontSize: 12,
                                                //   color: Colors.black
                                                // ),),
                                                Row(
                                                  children: <Widget>[
                                                    Text("\P1,500",style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.indigo,
                                                      fontWeight: FontWeight.bold,
                                                    ),),
                                                    Spacer(),
                                                    Text("4.5",style: TextStyle(
                                                      fontSize: 13,
                                                      color:  Color(0xFF18D191),
                                                      fontWeight: FontWeight.bold
                                                    ),),
                                                    Icon(Icons.star,size: 12,color: Colors.greenAccent,)
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
                                        ),
                                      ],
                                    ),
                                  ),
                            ),
                              //hotel 2
                          InkWell(
                            onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                                  return HotelDetail();
                                } ));
                              },

                           child: Container(
                                margin: EdgeInsets.only(right:24,top:8,bottom:8),
                                width: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.white,
                                  
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Expanded
                                    (
                                      flex: 8,
                                      child: Container
                                      (
                                        decoration: BoxDecoration
                                        (
                                            image: DecorationImage
                                            (
                                                //image: NetworkImage("https://cdn.pixabay.com/photo/2016/10/18/09/02/hotel"),
                                                image: new AssetImage("assets/3.png")
                                            
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(16),
                                              topRight: Radius.circular(16),
                                            )    
                                        ),
                                      )
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Torogan",style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold
                                            ),),
                                            // Text("Matrimonia",style: TextStyle(
                                            //   fontSize: 12,
                                            //   color: Colors.black
                                            // ),),
                                            Row(
                                              children: <Widget>[
                                                Text("\P1,800",style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.indigo,
                                                  fontWeight: FontWeight.bold,
                                                ),),
                                                Spacer(),
                                                Text("4.5",style: TextStyle(
                                                  fontSize: 13,
                                                  color:  Color(0xFF18D191),
                                                  fontWeight: FontWeight.bold
                                                ),),
                                                Icon(Icons.star,size: 12,color: Colors.greenAccent,)
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ),
                                  ],
                                ),
                              ),
                        ),
                              //hotel 3
                           
                      InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                                  return HotelDetail();
                                } ));
                              },

                           child: Container(
                                margin: EdgeInsets.only(right:24,top:8,bottom:8),
                                width: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.white,
                                  
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Expanded
                                    (
                                      flex: 8,
                                      child: Container
                                      (
                                        decoration: BoxDecoration
                                        (
                                            image: DecorationImage
                                            (
                                                //image: NetworkImage("https://cdn.pixabay.com/photo/2016/10/18/09/02/hotel"),
                                                image: new AssetImage("assets/4.png")
                                                
                                            ),
                                              borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(16),
                                              topRight: Radius.circular(16),
                                            )    
                                        ),
                                      )
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Maranao (New)",style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold
                                            ),),
                                            // Text("Lorem, Ipsum",style: TextStyle(
                                            //   fontSize: 12,
                                            //   color: Colors.black
                                            // ),),
                                            Row(
                                              children: <Widget>[
                                                Text("\P2,850",style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.indigo,
                                                  fontWeight: FontWeight.bold,
                                                ),),
                                                Spacer(),
                                                Text("4.5",style: TextStyle(
                                                  fontSize: 13,
                                                  color:  Color(0xFF18D191),
                                                  fontWeight: FontWeight.bold
                                                ),),
                                                Icon(Icons.star,size: 12,color: Colors.greenAccent,)
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ),

                                  ],
                                ),
                              )
                        ),
                        
                        InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                                  return HotelDetail();
                                } ));
                              },

                           child: Container(
                                margin: EdgeInsets.only(right:24,top:8,bottom:8),
                                width: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.white,
                                  
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Expanded
                                    (
                                      flex: 8,
                                      child: Container
                                      (
                                        decoration: BoxDecoration
                                        (
                                            image: DecorationImage
                                            (
                                                //image: NetworkImage("https://cdn.pixabay.com/photo/2016/10/18/09/02/hotel"),
                                                image: new AssetImage("assets/6.png")
                                                
                                            ),
                                              borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(16),
                                              topRight: Radius.circular(16),
                                            )    
                                        ),
                                      )
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Dorm Type Room",style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold
                                            ),),
                                            // Text("Lorem, Ipsum",style: TextStyle(
                                            //   fontSize: 12,
                                            //   color: Colors.black
                                            // ),),
                                            Row(
                                              children: <Widget>[
                                                Text("\P2,850",style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.indigo,
                                                  fontWeight: FontWeight.bold,
                                                ),),
                                                Spacer(),
                                                Text("4.5",style: TextStyle(
                                                  fontSize: 13,
                                                  color:  Color(0xFF18D191),
                                                  fontWeight: FontWeight.bold
                                                ),),
                                                Icon(Icons.star,size: 12,color: Colors.greenAccent,)
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ),



                                  ],
                                ),
                              )
                        )  //inkwell
                             
                          ],
                        ),
                      )
                    ],
                )
              );
  }
}