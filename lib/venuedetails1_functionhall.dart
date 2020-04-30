import 'package:flutter/material.dart';
import 'venuedetails_functionhall_food.dart';
import 'package:ayala_resort/datepicker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class VenueDetails extends StatefulWidget {
  @override
  _VenueDetailsState createState() => _VenueDetailsState();
}

class _VenueDetailsState extends State<VenueDetails> {
 
 TextEditingController dateCtl = TextEditingController();
 TextEditingController timeCtl = TextEditingController();

final _formKey = GlobalKey<FormState>();
DateTime date = DateTime.now();
 
  @override
  Widget build(BuildContext context) {
    String _formattedate = new DateFormat.yMd().format(date);
    return Scaffold(

      appBar:  AppBar(
     //   title: new Text(widget.title),
       backgroundColor: Color(0xFF18D191),
            automaticallyImplyLeading: true, 
            elevation: 0.0,
            title: Text("Reservation Form"),
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
                  
                  TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Ocassion',
                          ),
                          validator: (String value) {
                            if (value.trim().isEmpty) {
                              return 'Ocassion is required';
                            }
                          },
                  ),
                  const SizedBox(height: 16.0),


                  // DateDropDown(
                  //   labelText: 'Date of Function',
                  //    // valueText: new DateFormat.yMd().format(tgl),
                  //      controller: timeCtl,
                  //     valueStyle: valueStyle,
                  //     onPressed: () {
                  //           _selectedDate(context);
                  //     },
                  // ),
                  
                  TextFormField(
                    controller: dateCtl,
                    decoration: const InputDecoration
                    (
                      labelText: 'Date of Function',
                    ),

                     onTap: () async {
                            FocusScope.of(context).requestFocus(new FocusNode());

                            DateTime picked = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2020),
                                lastDate: DateTime(2021));
                               dateCtl.text = _formattedate.toString();
                            if(picked != null && picked != date){
                              setState(() {
                                date = picked;
                                //timeCtl.text = picked.format(context); // add this line.
                              //  dateCtl.text=picked.format(context); 
                               //  dddate = new DateFormat.yMd().format(context);
                              });
                            }
                      },
                    validator: (String value) {
                      if (value.trim().isEmpty) {
                        return 'Date of Function is required';
                      }
                    },
                  ),
                  const SizedBox(height: 16.0),

                  TextFormField(
                    controller: timeCtl,
                    decoration: const InputDecoration
                    (
                      labelText: 'Time of function',
                    ),
                    onTap: () async {
                          TimeOfDay time = TimeOfDay.now();
                          FocusScope.of(context).requestFocus(new FocusNode());

                          TimeOfDay picked =
                              await showTimePicker(context: context, initialTime: time);
                          if (picked != null && picked != time) {
                          //  timeCtl.text = picked.toString(); 
                            timeCtl.text = picked.format(context); // add this line.
                            setState(() {
                              time = picked;
                            });
                          }
                      },
                    validator: (String value) {
                      if (value.trim().isEmpty) {
                        return 'Time of function is required';
                      }
                      return null;
                    },
                  ), 




                  const SizedBox(height: 16.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Guaranteed No. of Person',
                    ),
                    validator: (String value) {
                      if (value.trim().isEmpty) {
                        return 'No. of person is required';
                      }
                    },
                  ), 

                 
                    new Container(
                        padding: const EdgeInsets.only(left: 40.0, top: 20.0,right: 20),
                        child: new RaisedButton(
                        child: const Text('NEXT'),
                        onPressed: (){  
                             Navigator.of(context).push(
                                 MaterialPageRoute(builder: (BuildContext context)=> VenueDetailsFood()), 
                            );
                        },
                        color: Color(0xFF18D191),
                        textColor: Colors.white,
                        )
                      ),
                ],
              ))),

    );
  }
}
