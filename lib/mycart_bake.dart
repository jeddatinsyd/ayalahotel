import 'package:ayala_resort/food_order.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';


class CartBaked extends StatefulWidget{

  String student_id;  
  CartBaked({Key key,this.student_id}) : super(key:key);
  
  @override
  _CartBaked createState() => _CartBaked();
  
} 

class _CartBaked extends State<CartBaked>{

int _itemCount = 0;

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
  void cancel(){
		AlertDialog alertDialog=new AlertDialog(
		  content: Text("Cancel order?"),  
		  actions: <Widget>[
			MaterialButton(
			  child:Text("YES"),
			  onPressed: (){

          Navigator.of(context, rootNavigator: true).pop('dialog');
		
       },
			),
			MaterialButton(
			  child: Text("NO"),
			  onPressed: (){
			
         Navigator.of(context, rootNavigator: true).pop('dialog');
			  },
			),
		  ],
		);
		showDialog(context: context,child: alertDialog);
	  }
  void confirm(){
		AlertDialog alertDialog=new AlertDialog(
		  content: Text("Are your sure?"),  
		  actions: <Widget>[
			MaterialButton(
			  child:Text("YES"),
			  onPressed: (){

          Navigator.of(context, rootNavigator: true).pop('dialog');
		
       },
			),
			MaterialButton(
			  child: Text("NO"),
			  onPressed: (){
			
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
                                  
                                             Text(shops[index].price,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                              
                                                          
                                                          ],
                                                        ),
                                                      ),
                                      

                                      _itemCount!=0? new  IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>_itemCount--),):new Container(),
                                      new Text(_itemCount.toString()),
                                      new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>_itemCount++)),

                                        MaterialButton(
                                        
                                          child: Text("Cancel"),
                                          
                                          color:Color(0xFF18D191),
                                          textColor: Colors.white,
                                          onPressed: (){
                                            cancel();
                                             
                                                // Navigator.of(context).push(
                                                //            MaterialPageRoute(builder: (BuildContext context)=> FoodOrder()), 
                                                // );
                                          },
                                        ), 
                                   



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

             SizedBox(height: 40,),
                        Row(
                                     children: <Widget>[
                                       Expanded(
                                         flex: 1,
                                         child: Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: <Widget>[
                                             Row(
                                               children: <Widget>[

                                                 Padding(
                                                   padding: const EdgeInsets.all(8.0),
                                                   child: Text("Total: 450 Pesos",style: TextStyle(fontSize: 20,),),
                                                 )
                                                  
                                               ],
                                              ),
                                            
                                           ],
                                         ),
                                       ),
                                      
                                      Expanded(
                                        flex: 1,
                                        child: MaterialButton(
                                          child: Text("CONFIRM"),
                                          color:Color(0xFF18D191),
                                          textColor: Colors.white,
                                          onPressed: (){
                                             
                                             confirm();
                                          },
                                        ), 
                                      )

                                     ],
                                   )


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
      title: "Cake",
      food: "Sweetest cake",
      price: "P50",
      reviewCount: 122
    ),
    Shop(
      imgPath:"assets/cupcake.png",
      title: "My cupcake",
      food: "Taste so good",
      price: "P65 ",
      reviewCount: 157
    ),
    Shop(
      imgPath:"assets/bread.png",
      title: "Bread",  
      food: "Favorite of all time",
      price: "P65",
      reviewCount: 157
    ),
];