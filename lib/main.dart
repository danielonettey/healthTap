import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'homepage.dart';
import 'editPage.dart';

void main()async {
  runApp(MyApp());
}




class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Quicksand',
        backgroundColor: Color(0xff4f8d88),
      ),
      home: Homepage(),
//      home: MyHomePage(title: 'NFC HealthTap'),
    );
  }
}





class EditTextField extends StatefulWidget {
  final String title;
  final bool number_only;
  final double fontSize;
  final String hint;

  const EditTextField({Key key, this.title, this.number_only, this.fontSize, this.hint}) : super(key: key);
  @override
  _EditTextFieldState createState() => _EditTextFieldState();
}

class _EditTextFieldState extends State<EditTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Text(
            widget.title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: MediaQuery.of(context).size.width * 0.047,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.01, bottom: 20),
            child: TextField(
              keyboardType: widget.number_only == true ? TextInputType.phone : TextInputType.text,
              decoration: InputDecoration(
                hintText: widget.hint,
                contentPadding: EdgeInsets.only(bottom: -20.0),
                hintStyle: TextStyle(
                  color: Colors.black,
                  height: 0.1,
                  fontSize: MediaQuery.of(context).size.width * 0.043,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class InfoData extends StatefulWidget {
  final String title;
  final String result;

  const InfoData({Key key, this.title, this.result}) : super(key: key);

  @override
  _InfoDataState createState() => _InfoDataState();
}


class _InfoDataState extends State<InfoData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
//      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.bottomLeft,
            child: Text(
              widget.title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: MediaQuery.of(context).size.width * 0.045,
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Text(
              widget.result,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: MediaQuery.of(context).size.width * 0.043,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TwoInfoData extends StatefulWidget {
  final String firstTitle;
  final String secondTitle;
  final String firstResult;
  final String secondResult;

  const TwoInfoData({Key key, this.firstTitle, this.secondTitle, this.firstResult, this.secondResult}) : super(key: key);
  @override
  _TwoInfoDataState createState() => _TwoInfoDataState();
}

class _TwoInfoDataState extends State<TwoInfoData> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Expanded(
          child: InfoData(title: widget.firstTitle,result: widget.firstResult,),
        ),
        Expanded(
          child: InfoData(title: widget.secondTitle,result: widget.secondResult,),
        )
      ],
    );
  }
}







