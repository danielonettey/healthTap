import 'package:flutter/material.dart';
import 'package:nfcflutter/subcategorypage.dart';

import 'categorydetails.dart';



class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff5EBBB4),
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
                  'Health Categories',
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
                  'Lorem Ipsum is simply dummy text of the printing and '
                      'typesetting industry. Lorem Ipsum has been the industry\'s '
                      'standard dummy text ever since the 1500s, when an unknown  ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: width * 0.01, horizontal: width * 0.05),
                width: width,

                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(
                  children: <Widget>[
                    Category(name: 'Heart Rate',image: 'assets/user.png',),
                    Category(name: 'Body Measurements',image: 'assets/user.png',),
                    Category(name: 'Heart Rate',image: 'assets/user.png',),
                    Category(name: 'Heart Rate',image: 'assets/user.png',),
                    Category(name: 'Heart Rate',image: 'assets/user.png',),
                    Category(name: 'Body Measurements',image: 'assets/walk.png',),
                    Category(name: 'Heart Rate',last: true,image: 'assets/walking.png',),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Category extends StatefulWidget {
  final String name;
  final String image;
  final bool last;

  const Category({Key key, this.name, this.image, this.last}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {

  final _briefTitle = <String, String>{
    'Heart Rate':'Heart rate, also known as pulse,'
        ' is the number of times a person\'s heart beats per '
        'minute. Normal heart rate varies from person to person, '
        'but a normal range for adults is 60 to 100 beats per minute, '
        'according to the Mayo Clinic.',
    'Heart Rate':'Heart rate, also known as pulse,'
        ' is the number of times a person\'s heart beats per '
        'minute. Normal heart rate varies from person to person, '
        'but a normal range for adults is 60 to 100 beats per minute, '
        'according to the Mayo Clinic.',
    'Heart Rate':'Heart rate, also known as pulse,'
        ' is the number of times a person\'s heart beats per '
        'minute. Normal heart rate varies from person to person, '
        'but a normal range for adults is 60 to 100 beats per minute, '
        'according to the Mayo Clinic.',
    'Heart Rate':'Heart rate, also known as pulse,'
        ' is the number of times a person\'s heart beats per '
        'minute. Normal heart rate varies from person to person, '
        'but a normal range for adults is 60 to 100 beats per minute, '
        'according to the Mayo Clinic.',
    'Heart Rate':'Heart rate, also known as pulse,'
        ' is the number of times a person\'s heart beats per '
        'minute. Normal heart rate varies from person to person, '
        'but a normal range for adults is 60 to 100 beats per minute, '
        'according to the Mayo Clinic.',

    'Body Measurements':'Most women have a good idea what '
        'their measurements are, but rather than assume you '
        'know, get an accurate measurement. Going to a tailor '
        'will give you more accurate measurements, but you '
        'can certainly get a close approximation handling the '
        'measuring tape yourself. ',
    'Body Measurements':'Most women have a good idea what '
        'their measurements are, but rather than assume you '
        'know, get an accurate measurement. Going to a tailor '
        'will give you more accurate measurements, but you '
        'can certainly get a close approximation handling the '
        'measuring tape yourself. ',
  };


  final _subcategories = {
    'Body Measurements': ['Height', 'Weight', 'Temperature','Humidity', 'Body Mass'],
    'Heart Rate': ['Dont Go', 'Hey there'],
  };



  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      child: InkWell(
        onTap: ()=>Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SubCategoryPage(
                  image: widget.image,
                  title: widget.name,
                  subtitle: _briefTitle[widget.name],
                  subcategories: _subcategories[widget.name],
                )
            )
        ),

        child: Container(
          padding: EdgeInsets.symmetric(vertical: height * 0.02),
          decoration: BoxDecoration(
              border: widget.last == true ? Border():Border(
                  bottom: BorderSide(
                      width: 1,
                      color: Colors.grey
                  )
              ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: width * 0.03),
                    child: Image(
                      image: AssetImage(widget.image),
                      width: width * 0.06,

                    ),
                  ),
                  Container(
                    child: Text(
                      widget.name,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: width * 0.04
                      ),
                    ),
                  )
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: width * 0.05,
                color: Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}