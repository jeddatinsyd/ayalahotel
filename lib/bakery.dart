import 'package:ayala_resort/food_order2.dart';
import 'package:ayala_resort/mycart.dart';
import 'package:flutter/material.dart';
import 'mycart.dart';
import 'mycart2.dart';
class Bakery extends StatelessWidget{
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
class _MainPageState extends State<MainPage>
{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea
            (
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 64,
                child: Row(
                  children: <Widget>[
                    Flexible
                    (
                      flex: 9,
                      child:Container(
                        padding: EdgeInsets.only(left:16,right:8),
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(4)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                            hintText: "Search",
                            helperStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 12
                            )
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex:2 ,
                      child:Center(
                        child:IconButton(
                          icon: Icon(Icons.shopping_cart),
                          onPressed: (){
                                 Navigator.of(context).push(
                                                           MaterialPageRoute(builder: (BuildContext context)=> MyCart()), 
                                                );
                          },
                        )
                      )
                    )
                  ],
                ),
              ),
            ),

            Container
            (
                height: 140,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded
                    (
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Categories",style:TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),),
                            // Text("show all",style: TextStyle(
                            //   color: Colors.black,
                            //   fontSize: 18,
                            //   fontWeight: FontWeight.w600
                            // ),)
                          ],
                        ),
                      ),
                    ),
                    Expanded
                    (
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView
                        (
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: <Widget>[
                            //breakfast
                            Container(
                                width: 100,
                                child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                    Container
                                    (
                                      height: 48,width: 48,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        //color: Colors.orange[200]
                                        color:Color(0xFF18D191),
                                        
                                      ),
                                      child: Center(
                                        //child:Image.network("assets/4.png",),
                                        //child: Image.asset("assets/1.jpeg",width: 32,height: 38,),
                                        
                                        child: Image.asset('assets/bread.png',width: 32,height: 38,),
                                      ),
                                    ),
                                    Text("Bread",style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)
                                     ),)
                                ],
                                ),
                              ),
                              //lunch
                              Container(
                                width: 100,
                                child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                    Container
                                    (
                                      height: 48,width: 48,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        //color: Colors.orange[200]
                                        color:Color(0xFF18D191)
                                      ),
                                      child: Center(
                                        //child:Image.network("assets/4.png",),
                                      //  child: Image.asset("assets/1.jpeg",width: 32,height: 38,),
                                        //child: Placeholder(),
                                        child: Image.asset('assets/cookies.png',width: 32,height: 38,),
                                      ),
                                    ),
                                    Text("Cookies",style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)
                                     ),)
                                ],
                                ),
                              ),
                              //meryenda
                              Container(
                                width: 100,
                                child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                    Container
                                    (
                                      height: 48,width: 48,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        //color: Colors.orange[200]
                                        color:Color(0xFF18D191)
                                      ),
                                      child: Center(
                                        //child:Image.network("assets/4.png",),
                                      //  child: Image.asset("assets/1.jpeg",width: 32,height: 38,),
                                       // child: Placeholder(),
                                       child: Image.asset('assets/dinnerp.png',width: 32,height: 38,),
                                      ),
                                    ),
                                    Text("Cake",style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)
                                     ),)
                                ],
                                ),
                              ),
                              //drinks
                              Container(
                                width: 100,
                                child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                    Container
                                    (
                                      height: 48,width: 48,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        //color: Colors.orange[200]
                                        color:Color(0xFF18D191)
                                      ),
                                      child: Center(
                                        //child:Image.network("assets/4.png",),
                                      //  child: Image.asset("assets/1.jpeg",width: 32,height: 38,),
                                       // child: Placeholder(),
                                        child: Image.asset('assets/cupcake.png',width: 32,height: 38,),
                                      ),
                                    ),
                                    Text("Cupcakes",style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)
                                     ),)
                                ],
                                ),
                              ),
                              //Dessert
                              // Container(
                              //   width: 84,
                              //   child: Column(
                              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //   children: <Widget>[
                              //       Container
                              //       (
                              //         height: 48,width: 48,
                              //         decoration: BoxDecoration(
                              //           shape: BoxShape.circle,
                              //          // color: Colors.orange[200]
                              //          color:Color(0xFF18D191)
                              //         ),
                              //         child: Center(
                              //           //child:Image.network("assets/4.png",),
                              //         //  child: Image.asset("assets/1.jpeg",width: 32,height: 38,),
                              //         //  child: Placeholder(),
                              //           child: Image.asset('assets/lunchp.png',width: 32,height: 38,),
                              //         ),
                              //       ),
                              //       Text("Dessert",style: TextStyle(
                              //           color: Colors.black.withOpacity(0.6)
                              //        ),)
                              //   ],
                              //   ),
                              // ),
                              //other
                              // Container(
                              //   width: 84,
                              //   child: Column(
                              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //   children: <Widget>[
                              //       Container
                              //       (
                              //         height: 48,width: 48,
                              //         decoration: BoxDecoration(
                              //           shape: BoxShape.circle,
                              //          // color: Colors.orange[200]
                              //          color:Color(0xFF18D191)
                              //         ),
                              //         child: Center(
                              //           //child:Image.network("assets/4.png",),
                              //         //  child: Image.asset("assets/1.jpeg",width: 32,height: 38,),
                              //           child: Placeholder(),
                              //         ),
                              //       ),
                              //       Text("Other",style: TextStyle(
                              //           color: Colors.black.withOpacity(0.6)
                              //        ),)
                              //   ],
                              //   ),
                              // ),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
            ),
            //recommended for you
            Padding(
              padding: const EdgeInsets.only(top:16,left:8),
              child: Text("Recommended for you",
                                style: TextStyle(color:Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,)
                  ),
            ),

            Container(
              height: 400,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: shops.length,
                itemBuilder: (context,index){
                  return Container(
                    height: 140,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color:Colors.grey
                      )
                    ),
                    child: Row(
                      children: <Widget>[
                           Expanded(
                             flex:4,
                             child: Container(
                               decoration: BoxDecoration(
                                 image: DecorationImage(
                                          //image: NetworkImage(
                                            //shops[index].imgPath
                                          //),
                                  image: new AssetImage(shops[index].imgPath),
                                  fit: BoxFit.cover
                                  //   fit: BoxFit.cover
                                 )
                               ),
                             ),
                           ),
                           Expanded(
                             flex: 8,
                             child: Container(
                               margin: EdgeInsets.only(left:8),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: <Widget>[
                                   Row(
                                     mainAxisSize: MainAxisSize.min,
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: <Widget>[
                                       Expanded(
                                         flex: 8,
                                         child: Text(
                                           shops[index].title,
                                           style: TextStyle(
                                             fontSize: 20,
                                             fontWeight: FontWeight.bold
                                             
                                           ),
                                         ),
                                       ),
                                      //  Expanded(
                                      //    flex: 2,
                                      //    child: shops[index],
                                      //  )
                                     ],
                                   ),
                                   Text(shops[index].food,style: TextStyle(fontSize: 18),),
                                   Spacer(),
                                  // Text(shops[index].price,style: TextStyle(fontSize: 12,color: Colors.black),),
                                   Spacer(),
                                   Row(
                                     children: <Widget>[
                                       Expanded(
                                         flex: 1,
                                         child: Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: <Widget>[
                                             Row(
                                               children: <Widget>[
                                                  Icon(Icons.star,color:Colors.yellow,size: 14,),
                                                  Icon(Icons.star,color:Colors.yellow,size: 14,),
                                                  Icon(Icons.star,color:Colors.yellow,size: 14,),
                                                  Icon(Icons.star,color:Colors.yellow,size: 14,),
                                                  Icon(Icons.star,color:Colors.yellow,size: 14,),
                                               ],
                                              ),
                                             Text(shops[index].price,style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),)
                                           ],
                                         ),
                                       ),
                                      
                                      Expanded(
                                        flex: 1,
                                        child: MaterialButton(
                                          child: Text("ORDER"),
                                          color:Color(0xFF18D191),
                                          textColor: Colors.white,
                                          onPressed: (){
                                                Navigator.of(context).push(
                                                           MaterialPageRoute(builder: (BuildContext context)=> BakedOrder()), 
                                                );
                                          },
                                        ), 
                                      )

                                     ],
                                   )
                                 ],
                               ),
                             ),
                           )
                      ],
                    ),
                  );
                }
                
              ),
            )
            
          ],
        ),
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
List<Shop> shops= [
    Shop(
      imgPath:"assets/cake.png",
      title: "Cake",
      food: "Sweetest cake",
      price: "\50.00",
      reviewCount: 122
    ),
    Shop(
      imgPath:"assets/cupcake.png",
      title: "My cupcake",
      food: "Taste so good",
      price: "\65.00 pesos",
      reviewCount: 157
    ),
    Shop(
      imgPath:"assets/bread.png",
      title: "Bread",  
      food: "Favorite of all time",
      price: "\65.00 pesos",
      reviewCount: 157
    ),
];