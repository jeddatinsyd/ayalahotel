import 'package:ayala_resort/food_order.dart';
import 'package:ayala_resort/venuedetails_functionhall_food.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'VenueMain.dart';


class MealFood extends StatefulWidget{

  String student_id;  
  MealFood({Key key,this.student_id}) : super(key:key);
  
  @override
  _MealFood createState() => _MealFood();

} 

class _MealFood extends State<MealFood>{

int _itemCount = 0;
   bool monVal = false;
 
  int _n = 0;
  void add() {
    setState(() {
      _n++;
    });
  }
  void minus() {
    setState(() {
      if (_n != 0) 
        _n--;
    });
  }
void confirm(){
		AlertDialog alertDialog=new AlertDialog(
		  content: Text("Are your sure?"),  
		  actions: <Widget>[
			MaterialButton(
			  child:Text("YES"),
			  onPressed: (){

          Navigator.of(context, rootNavigator: true).pop('dialog');
			//	  Navigator.of(context).pop(false);
				//  Navigator.of(context).push(
        //                           MaterialPageRoute(builder: (BuildContext context)=>  VenueDetailsFood()), 
        //                         );
        
               //            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => new VenueMain()));
		  //Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => new VenueMain()));
       
       },
			),
			MaterialButton(
			  child: Text("NO"),
			  onPressed: (){
				//	Navigator.of(context).pop(false);
         // Navigator.of(context).pop();
         Navigator.of(context, rootNavigator: true).pop('dialog');
			  },
			),
		  ],
		);
		showDialog(context: context,child: alertDialog);
	  }
  @override 
  Widget build(BuildContext context ){  
    return new Scaffold(
      
        body: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  

                   Container(
              height: 420,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: shops.length,
                itemBuilder: (context,index){
                  return Container(
                    height: 190,
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

                          Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 // Text("Mon"),
                  Checkbox(
                    value: monVal,
                    onChanged: (bool value) {
                      setState(() {
                        monVal = value;
                      });
                    },
                  ),
                ],
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
                                  
                                             Text(shops[index].price,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                              
                                                          
                                                          ],
                                                        ),
                                                      ),
                                      

                                      _itemCount!=0? new  IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>_itemCount--),):new Container(),
                                      new Text(_itemCount.toString()),
                                      new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>_itemCount++)),

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
            ),

            SizedBox(height: 30,),
                      new Container(
                            padding: const EdgeInsets.only(left: 120.0, right: 100),
                            child: new RaisedButton(
                              child: const Text('       RESERVE       '),
                              onPressed: (){  
                                // Navigator.of(context).push(
                                //   MaterialPageRoute(builder: (BuildContext context)=> FoodOrder()), 
                                // );
                               confirm();
                            


                              },
                              color: Color(0xFF18D191),
                              textColor: Colors.white,
                            )
                      ),
              
                                  

               
                ]
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
List<Shop> shops= [
    Shop(
      imgPath:"assets/cake.png",
      title: "MENU A",
      food: "Plain Rice or Koneng, \nChicken Joy, \nPancit Bam-I",
      price: "P250.00",
      reviewCount: 122
    ),
    Shop(
      imgPath:"assets/cupcake.png",
      title: "MENU B",
      food: "Plain Rice or Koneng,\nChicken Adobo, \nCamaron Rebosado, \nMix Veggies",
      price: "P260.00",
      reviewCount: 157
    ),
    Shop(
      imgPath:"assets/bread.png",
      title: "MENU C",  
      food: "Plain Rice or Koneng, \nChicken Joy \nChopsuey",
      price: "P260.00",
      reviewCount: 157
    ),
    Shop(
      imgPath:"assets/bread.png",
      title: "MENU D",  
      food: "Plain Rice or Koneng, \nBeef Steak \nChicken Joy \nColeslaw",
      price: "P265.00",
      reviewCount: 157
    ),
    Shop(
      imgPath:"assets/bread.png",
      title: "MENU E",  
      food: "Plain Rice or Koneng, \numpitan Crispy Chicken \nTangigue \nMixed Veggies",
      price: "P265.00",
      reviewCount: 157
    ),
];