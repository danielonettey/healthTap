import 'package:flutter/material.dart';
import 'mentalhealth.dart';
import 'mentips.dart';
import 'womentips.dart';
import 'exercisetips.dart';
import 'diettips.dart';


class TipsPage extends StatefulWidget {
  @override
  _TipsPageState createState() => _TipsPageState();
}

class _TipsPageState extends State<TipsPage>{
  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6B9DA8),
        title: Text(
          'Health Tips', textAlign: TextAlign.center
        ),
      ),
      body: ListView(
        // margin: EdgeInsets.only(top: height * 0.02),
        padding: const EdgeInsets.only(top: 15),
        children: <Widget>[
          Container(
                child: Text(
                  'Select category and view tips',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: width * 0.06,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
          Container(
            child: InkWell(
              onTap: ()=>
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>DietTipsPage()),
                      ),
              child: const Center(child: Text('Diet and Nutrition', style: TextStyle(fontWeight: FontWeight.bold),)),
                      ),
            height: 80,
          ),
          Container(
            height: 80,
            child: InkWell(
              onTap: ()=>
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>MentalHealthTipsPage()),
                      ),
              child: const Center(child: Text('Mental Health', style: TextStyle(fontWeight: FontWeight.bold),)),
                      ),
          ),
          Container(
            height: 80,
            child: InkWell(
              onTap: ()=>
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>ExerciseTipsPage()),
                      ),
              child: const Center(child: Text('Exercise', style: TextStyle(fontWeight: FontWeight.bold),)),
                      ),
          ),
          Container(
            height: 80,
            child: InkWell(
              onTap: ()=>
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>WomenTipsPage()),
                      ),
              child: const Center(child: Text('Women', style: TextStyle(fontWeight: FontWeight.bold),)),
                      ),
          ),
          Container(
            height: 80,
            child: InkWell(
              onTap: ()=>
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>MenTipsPage()),
                      ),
              child: const Center(child: Text('Men', style: TextStyle(fontWeight: FontWeight.bold),)),
                      ),
          ),
          
        ],
      )
    );
  }
 
}