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
        backgroundColor: Color(0xff4f8d88),
        title: Text(
          'Health Tips', textAlign: TextAlign.center
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                 margin: EdgeInsets.symmetric(horizontal: width * 0.05,),
                padding: EdgeInsets.only(bottom: height * 0.05, top: height * 0.02),
                child: Text(
                  'Select category and view tips',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: width * 0.055,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
              MajorTips(name: 'Diet and Nutrition',next: DietTipsPage(),),
              MajorTips(name: 'Mental Health',next: MentalHealthTipsPage(),),
              MajorTips(name: 'Exercise',next: ExerciseTipsPage(),),
              MajorTips(name: 'Woman',next: WomenTipsPage(),),
              MajorTips(name: 'Men',next: MenTipsPage(),),


            ],
          ),
        ),
      )

//      ListView(
//        // margin: EdgeInsets.only(top: height * 0.02),
//        padding: const EdgeInsets.only(top: 15),
//        children: <Widget>[
//          Container(
//                child: Text(
//                  'Select category and view tips',
//                  textAlign: TextAlign.center,
//                  style: TextStyle(
//                      color: Colors.black,
//                      fontSize: width * 0.06,
//                      fontWeight: FontWeight.w700
//                  ),
//                ),
//              ),


//          Container(
//            height: 80,
//            child: InkWell(
//              onTap: ()=>
//                      Navigator.push(
//                        context,
//                        MaterialPageRoute(builder: (context)=>ExerciseTipsPage()),
//                      ),
//              child: const Center(child: Text('Exercise', style: TextStyle(fontWeight: FontWeight.bold),)),
//                      ),
//          ),
//          Container(
//            height: 80,
//            child: InkWell(
//              onTap: ()=>
//                      Navigator.push(
//                        context,
//                        MaterialPageRoute(builder: (context)=>WomenTipsPage()),
//                      ),
//              child: const Center(child: Text('Women', style: TextStyle(fontWeight: FontWeight.bold),)),
//                      ),
//          ),
//          Container(
//            height: 80,
//            child: InkWell(
//              onTap: ()=>
//                      Navigator.push(
//                        context,
//                        MaterialPageRoute(builder: (context)=>MenTipsPage()),
//                      ),
//              child: const Center(child: Text('Men', style: TextStyle(fontWeight: FontWeight.bold),)),
//                      ),
//          ),
//
//        ],
//      )
    );
  }
 
}


class MajorTips extends StatelessWidget {
  final String name;
  final Widget next;

  const MajorTips({Key key, this.name, this.next}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xff4f8d88),
      ),
      padding: EdgeInsets.all(width * 0.05),
      margin: EdgeInsets.symmetric(horizontal: width * 0.06, vertical: width * 0.02),
      alignment: Alignment.topLeft,
      child: InkWell(
        onTap: ()=>
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>this.next),
            ),
        child: Text(
            this.name,
            style: TextStyle(
                color: Colors.white,
//                color: Color(0xff4f8d88),
                fontWeight: FontWeight.w600,
                fontSize: width * 0.05
            )
        ),
      ),

    );
  }
}
