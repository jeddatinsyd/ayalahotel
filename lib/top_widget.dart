import 'package:flutter/material.dart';

class TopWidget extends StatefulWidget{

  TextEditingController textEditingController;
  TopWidget({this.textEditingController});

  @override 
  _TopWidgetState createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
  @override
  Widget build(BuildContext context){
  return  Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/6,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(

                      children: <Widget>[
                        Expanded(
                          child: Row(
                           //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Welcome to Ayala Resort Hotel", style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),),
                                    
                            
                                  ],
                                ),
                              
                              ],
                          ),
                        ),
                    
                      ],
                  ),
              );
  }
}