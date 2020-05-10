import 'package:flutter/material.dart';
import 'package:nfcflutter/exampleNFC.dart';

import 'categorypage.dart';
import 'editpage.dart';
import 'tipspage.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          margin: EdgeInsets.only(top: height * 0.1),
          child: Column(
            children: <Widget>[
              Container(
                child: Text(
                  'Welcome to NFC Health Tap!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: width * 0.058,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.05, right: width * 0.2, left: width * 0.2),
                width: width * 0.5,
                height: width * 0.5,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  child: InkWell(
                    onTap: ()=>
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>TipsPage()),
                      ),
                    child: Container(
                      padding: EdgeInsets.all(width * 0.05),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        gradient: LinearGradient(
                          colors: const [
                            Colors.red, Colors.redAccent
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/health_icon.png'),
                            height:  height * 0.12,
                          ),
                          Container(
                            child: Text(
                              'Health Tips',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * 0.05,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.05),
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: ()=>
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EditPage()),
                          ),
                      child: Container(
                        width: width * 0.35,
                        padding: EdgeInsets.symmetric(vertical: height * 0.015),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                            colors: const [
                              Colors.red, Colors.redAccent
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Edit',
                          style: TextStyle(
                            fontSize: width * 0.045,
                            fontWeight: FontWeight.w600,
                            color: Color(0xfffbfbfb),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: ()=>Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CategoryPage()),
                      ),
                      child: Container(
                        width: width * 0.35,
                        padding: EdgeInsets.symmetric(vertical: height * 0.015),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                            colors: const [
                              Colors.red, Colors.redAccent
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Transfer',
                          style: TextStyle(
                              fontSize: width * 0.045,
                              fontWeight: FontWeight.w600,
                              color: Color(0xfffbfbfb),
                              fontFamily: 'Quicksand'
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: width,
                margin: EdgeInsets.only(top: height * 0.05),
                padding: EdgeInsets.only(top: height * 0.03),
                decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                          color: Colors.grey,
                          width: 0.5
                      ),

                    )
                ),
                child: Text(
                  'Personal Information',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: width * 0.056,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),

              Container(
                width: width,
                child: Column(
                  children: <Widget>[
//                    InfoData(title: 'Full Name',result: 'Daniel Okaitei Nettey',),
//                    TwoInfoData(firstTitle: 'Age',secondTitle: 'Gender',firstResult: '20',secondResult: 'Male',),
//                    TwoInfoData(firstTitle: 'Weight',secondTitle: 'Height',firstResult: '200kg',secondResult: '6 feet',),
//                    TwoInfoData(firstTitle: 'Marital Status',secondTitle: 'Emergency Contact',firstResult: 'Divorced',secondResult: '0559418732',),
//                    InfoData(title: 'Allergies',result: 'Banku and shito fish \nAnd sometimes Fufu with aponkye',),
//                    InfoData(title: 'Medical History',result: '2 ahsbd jgshd kjgshfjk gshdjkf gsjkdgf jksdhgfjk gsdhfj gsdhjf gdsjkf gsdjkgf jshdgf jksghdf jkgh0',),
                  ],
                ),
              ),

//              NfcScan(),

            ],
          ),
        ),
      ),
    );
  }
}