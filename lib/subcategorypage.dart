import 'dart:ffi';

import 'package:flutter/material.dart';

import 'categorydetails.dart';
import 'categorypage.dart';

class SubCategoryPage extends StatefulWidget {
  final String title;
  final String image;
  final String subtitle;
  final List subcategories;


  const SubCategoryPage({Key key, this.title, this.image, this.subtitle, this.subcategories}) : super(key: key);
  @override
  _SubCategoryPageState createState() => _SubCategoryPageState();
}

class _SubCategoryPageState extends State<SubCategoryPage> {

  final _subcategories = {
    'Body Measurements': {
      'Height' : '6" 0"',
      'Weight': null,
      'Temperature': null,
      'Humidity': null,
      'Body Mass': null},
    'Heart Rate': {
      'Height' : '6" 0"',
      'Weight': null,
      'Temperature': null,
      'Humidity': null,
      'Body Mass': null
    },
  };

  final _subcategors = {
    'Body Measurements': [
      'Height',
      'Weight',
      'Temperature',
      'Humidity',
      'Body Mass'
    ]
  };

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xff5EBBB4),
//      appBar: AppBar(
//        backgroundColor: Color(0xff5EBBB4),
//        leading: Container(
//          width: 900,
//          child: Text('Back',style: TextStyle(fontSize: 30),),
//        ),
//
//      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          margin: EdgeInsets.only(top: height * 0.05),
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(bottom: height * 0.025),
                child: Text(
                  widget.title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.06,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(bottom: height * 0.05),
                child: Text(
                  widget.subtitle,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),

              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(bottom: height * 0.02),
                child: Text(
                  'Today',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.05,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),

//              Column(
//                children: _subcategories[widget.title].map((item, result) => MapEntry(item, result) ).,
//              )

              Column(
                children: _subcategors[widget.title].map((item) => SubCategory(name: item.toString(),image: widget.image,answer: '6" 12"',)).toList(),
              )

//              SubCategory(name: item.toString(),image: widget.image,answer: result,)



//              Container(
//                alignment: Alignment.bottomLeft,
//                padding: EdgeInsets.only(bottom: height * 0.02),
//                child: Text(
//                  'No Data Available',
//                  style: TextStyle(
//                      color: Colors.white,
//                      fontSize: width * 0.05,
//                      fontWeight: FontWeight.w600
//                  ),
//                ),
//              ),
//              Container(
//                padding: EdgeInsets.symmetric(vertical: width * 0.01, horizontal: width * 0.05),
//                width: width,
//                decoration: BoxDecoration(
//                    color: Colors.white,
//                    borderRadius: BorderRadius.all(Radius.circular(10))
//                ),
//                child: Column(
//                  children: <Widget>[
//                    Category(name: 'Height',sub: true,),
//                    Category(name: 'Height',sub: true,),
//                    Category(name: 'Height',sub: true,),
//                    Category(name: 'Height',sub: true,),
//                    Category(name: 'Height',sub: true,),
//                    Category(name: 'Height',sub: true,last: true,),
//                  ],
//                ),
//              )
            ],
          ),
        ),
      ),
    );
  }
}


class SubCategory extends StatefulWidget {
  final String name;
  final String answer;
  final String image;

  const SubCategory({Key key, this.name, this.answer, this.image}) : super(key: key);
  @override
  _SubCategoryState createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(vertical: width * 0.01, horizontal: width * 0.035),
      margin: EdgeInsets.only(bottom: height * 0.015),

      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: InkWell(
        onTap: ()=>Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CategoryDetails()
            )
        ),

        child: Container(
          padding: EdgeInsets.symmetric(vertical: height * 0.01),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: width * 0.01),
                        child: Image(
                          image: AssetImage(widget.image),
                          width: width * 0.03,

                        ),
                      ),
                      Container(
                        child: Text(
                          widget.name,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.03
                          ),
                        ),
                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: width * 0.03,
                    color: Colors.grey,
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: height * 0.01),
                alignment: Alignment.topLeft,
                child: Text(
                  widget.answer !=null ? widget.answer: 'Unavailable ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: width * 0.06,
                      fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
