//import 'package:akic_pregma/HotelMain.dart';
import 'package:ayala_resort/hotel_detail_reserve.dart';
import 'package:flutter/material.dart';
import 'HotelMain.dart';
import 'hotel_detail_reserve.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_pro/carousel_pro.dart';


String id='';
class HotelDetailMain extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HotelDetail(),
    );
  }
}

class HotelDetail extends StatefulWidget{
  
  @override
  _HotelDetailState createState() => _HotelDetailState();

}

class _HotelDetailState extends State<HotelDetail> {



  @override
  Widget build(BuildContext context){
    
      // Widget image_slider_carousel = Container(
      //   height: 200,
      //   child: Carousel(
      //     boxFit: BoxFit.fill,
      //     images: [
      //       AssetImage('assets/t2.png'),
      //       AssetImage('assets/t3.png'),
      //       AssetImage('assets/t1.png'),
           
      //     ],
      //     indicatorBgPadding: 1.0,
      //     autoplay: false,

      //   ),
       
      // );
    

    
    return Scaffold(
      
        body: Column(
          
          children: <Widget>[
          Stack(
            children: <Widget>[

                 Container(
                  height: 200,
                  child: Carousel(
                    boxFit: BoxFit.fill,
                    images: [
                      AssetImage('assets/t2.png'),
                      AssetImage('assets/t3.png'),
                      AssetImage('assets/t1.png'),
                    ],
                    indicatorBgPadding: 1.0,
                    autoplay: false,

                  ),
                ),
         Positioned(
                   
                    left: 16,
                    top: 32,
                    child: ClipOval
                    (
                          child:Container(
                            child:IconButton
                            (
                                    
                                    icon: Icon(Icons.arrow_back_ios,),
                                    
                                    color: Color(0xFF18D191),
                                            onPressed: ()
                                              {
                                              //Navigator.pop(context);
                                              Navigator.push(context,MaterialPageRoute(builder: (context){
                                                return HotelMain();
                                              }));
                                            },
                                  
                            ),
                          ),
                    ),
                  
                 ),
       

            ],
          ),
      
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 16,top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Standard",style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,

                    )),
                    
                    Row(children: <Widget>[
                     

                    ],),
                    SizedBox(height: 8,),
                   // SizedBox(height: 8,),
                    
                    Text("This upscale, contemporary hotel is 2km Hazrat Shanhjalal International Airport and 11 km from Jatiyo Sangsad Bhaban, the Bangladesh Parlianment.",
                          style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,     
                          ),)
                  ],
                ),
              ),
            ),

            //platinum
           // SizedBox(height: 8,),

            Expanded(
              flex: 3,
             // child: Placeholder(),
              child: Padding(
                padding: const EdgeInsets.only(left: 16 , right: 16),
                child: Row(
                  children: <Widget>[ 
                   
                    Expanded
                    (
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Price"),
                          SizedBox(height: 8,),
                          Text("\3,300 Php",style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),),
                        ],
                      ),
                    ),
                  
                    
                    Expanded
                    (
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        //  Text("Recently booked"),
                          SizedBox(height: 8,),
                          
                           Text("Reviews"),
                          SizedBox(height: 8,),
                          Row(
                            children: <Widget>[
                              Text("4.5",style: TextStyle(
                                color: Colors.orange,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),),
                              Icon(Icons.star,color: Colors.orange,size: 12,),
                              Icon(Icons.star,color:  Colors.orange,size: 12,),
                              Icon(Icons.star,color:  Colors.orange,size: 12,),
                              Icon(Icons.star,color:  Colors.orange,size: 12,),
                              Icon(Icons.star,color:  Colors.grey,size: 12,),
                            ],
                          )
                          
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
            
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left:16,right:16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Facilities",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 3,
                                    spreadRadius: 2
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4)
                                ),
                                 child: Icon(Icons.local_taxi,color:  Color(0xFF18D191),),
                            ),
                            SizedBox(height: 8,),
                            Text("Parking")
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 3,
                                    spreadRadius: 2
                                  )
                                ],
                                borderRadius: BorderRadius.circular(4)
                                ),
                                 child: Icon(Icons.room_service,color:  Color(0xFF18D191),),
                            ),
                            SizedBox(height: 8,),
                            Text("Bath")
                          ],
                        ),
                       

                        Column(
                          children: <Widget>[
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 3,
                                    spreadRadius: 2
                                  )
                                ],
                                borderRadius: BorderRadius.circular(4)
                                ),
                                 child: Icon(Icons.wifi,color:  Color(0xFF18D191),),
                            ),
                            SizedBox(height: 8,),
                            Text("WiFi")
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 3,
                                    spreadRadius: 2
                                  )
                                ],
                                borderRadius: BorderRadius.circular(4)
                                ),
                                child: Icon(Icons.tv,color:  Color(0xFF18D191),),
                            ),
                            SizedBox(height: 8,),
                            Text("TV")
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 3,
                                    spreadRadius: 2
                                  )
                                ],
                                borderRadius: BorderRadius.circular(4)
                                ),
                                child: Icon(Icons.more_horiz,color: Color(0xFF18D191),),
                            ),
                            SizedBox(height: 8,),
                            Text("more")
                          ],
                        )




                      ],
                    )

                  ],
                ),
              ),
            ),

            Expanded(
              flex: 3,
              child: Row(
                children: <Widget>[
                        Expanded(
                          flex: 1,

                           child: GestureDetector
                                          (                        
                                              // onTap: (){
                                              //     Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                                              //       return Book();
                                              //     } ));
                                              // },
                                              onTap: ()=>Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder:(BuildContext context )=>Book(id:id)
                                                        ),
                                              ),

                          child: Container(
                            margin: EdgeInsets.only(top: 20,bottom: 20,right: 20,left: 20),
                            decoration: BoxDecoration
                            (
                              color: Color(0xFF18D191),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            
                            child: Center(
                              child: Text("BOOK NOW",style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize:18
                              ),),


                            
                            ),
                            


                          ), 
                                          ),
                        ),
                ],
              ),
            )
          ],
        ),
    );
  }
}
class Shop{
  String imgPath;
  String title;
  String food;
  String price;
  int reviewCount;
  
  Shop({this.imgPath,this.title,this.food,this.price,this.reviewCount});
}