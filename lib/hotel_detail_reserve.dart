import 'package:ayala_resort/HotelMain.dart';
import 'package:ayala_resort/dashboard.dart';
import 'package:ayala_resort/datepicker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'dashboard.dart';
//void main() => runApp(new MyApp());


class Book extends StatefulWidget {
  final String id;
 
  Book({Key key, this.id}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Book> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  var finaldate;

  void callDatePicker() async {
    var order = await getDate();
    setState(() {
      finaldate = order;
    });
  }

  String pilihTanggal, labelText;
  DateTime tgl = new DateTime.now();
  DateTime tgl2 = new DateTime.now();
  final TextStyle valueStyle = TextStyle(fontSize: 16.0);
  Future<Null> _selectedDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: tgl,
        firstDate: DateTime(2020),
        lastDate: DateTime(2099));

    if (picked != null && picked != tgl) {
      setState(() {
        tgl = picked;
        pilihTanggal = new DateFormat.yMd().format(tgl);
      });
    } else {}
  }

    Future<Null> _selectedDate2(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: tgl2,
        firstDate: DateTime(1992),
        lastDate: DateTime(2099));

      if (picked != null && picked != tgl) {
          setState(() {
              tgl2 = picked;
              pilihTanggal = new DateFormat.yMd().format(tgl);
        });
      } else {}
    }



  Future<DateTime> getDate() {
    // Imagine that this function is
    // more complex and slow.
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light(),
          child: child,
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
     //   title: new Text(widget.title),
       backgroundColor: Color(0xFF18D191),
            automaticallyImplyLeading: true, 
            elevation: 0.0,
            title: Text("Reservation"),
      ),
      body: new SafeArea(
          top: false,
          bottom: false,
          child: new Form(
              key: _formKey,
              autovalidate: true,
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                
                  SizedBox(height: 50.0,),
                  
                  DateDropDown(
                    labelText: 'Checkin',
                      valueText: new DateFormat.yMd().format(tgl),
                      valueStyle: valueStyle,
                      onPressed: () {
                            _selectedDate(context);
                      },
                  ),
                  DateDropDown(
                      labelText: 'Checkout',
                      valueText: new DateFormat.yMd().format(tgl),
                      valueStyle: valueStyle,
                      onPressed: () {
                            _selectedDate2(context);
                      },
                  ),
                  
             
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.format_list_numbered),
                      hintText: 'No. of room',
                      labelText: 'Room(s)',
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      WhitelistingTextInputFormatter.digitsOnly,
                    ],
                  ),
                   new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.format_list_numbered),
                      hintText: 'No. of people',
                      labelText: 'people',
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      WhitelistingTextInputFormatter.digitsOnly,
                    ],
                  ),
               
                  new Container(
                      padding: const EdgeInsets.only(left: 20.0, top: 20.0,right: 20,),
                      child: new RaisedButton(
                        child: const Text('Submit'),
                        onPressed: (){  
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context)=> new HotelMain()), 
                          );
                        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Dashboard()));
                        // confirm();
                        },
                        color: Color(0xFF18D191),
                        textColor: Colors.white,
                      )),
                ],
              ))),
    );
  }
}