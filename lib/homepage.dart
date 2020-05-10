import 'package:flutter/material.dart';
import 'package:nfcflutter/exampleNFC.dart';

import 'categorypage.dart';
import 'editpage.dart';

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

      appBar: AppBar(
        backgroundColor: Color(0xff5EBBB4),
          title: Container(
            child: Text(
              'HealthTap'
            ),
          ),
      ),
      drawer: Container(
        width: width*0.55,
        padding: EdgeInsets.symmetric(horizontal: width * 0.065),
        color: Color(0xff5EBBB4),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: height * 0.06,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.close,
                          size: width * 0.045,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff6B6B6B),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),


            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: height * 0.2),
                  child: Divider(

                    color: Color(0xff757575),
                    thickness: 0.75,
                    endIndent: width * 0.025,
                  ),
                ),
                Container(
                  height: height * 0.06,
                  child: ListTile(
                    title: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Profile',
                        style: TextStyle(color: Colors.white,fontSize: width * 0.042),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EditPage())
                      );
                    },
                    contentPadding: EdgeInsets.all(0),
                  ),
                ),
                Container(
                  child: Divider(

                    color: Color(0xff757575),
                    thickness: 0.75,
                    endIndent: width * 0.025,
                  ),
                ),
                Container(
                  height: height * 0.06,
                  child: ListTile(
                    title: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Transfer History',
                        style: TextStyle(color: Colors.white,fontSize: width * 0.042),
                      ),
                    ),
                    onTap: () {

                    },
                    contentPadding: EdgeInsets.all(0),
                  ),
                ),
                Container(
                  child: Divider(
                    color: Color(0xff757575),
                    thickness: 0.75,
                    endIndent: width * 0.025,
                  ),
                ),
                Container(
                  height: height * 0.06,
                  child: ListTile(
                    title: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Settings',
                        style: TextStyle(color: Colors.white,fontSize: width * 0.042),
                      ),
                    ),
                    onTap: () {

                    },
                    contentPadding: EdgeInsets.all(0),
                  ),
                ),

                Container(

                  child: Divider(

                    color: Color(0xff757575),
                    thickness: 0.75,
                    endIndent: width * 0.025,
                  ),
                ),

              ],
            ),


            Positioned(
              bottom: height * 0.045,
              child: Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'HealthTap',
                    style: TextStyle(
                      fontSize: width * 0.05,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      letterSpacing: -2.5,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          margin: EdgeInsets.only(top: height * 0.03),
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
                    onTap: ()=>{},
                    child: Container(
                      padding: EdgeInsets.all(width * 0.05),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
//                        gradient: LinearGradient(
//                          colors: const [
//                            Colors.red, Colors.redAccent
//                          ],
//                          begin: Alignment.bottomCenter,
//                          end: Alignment.topCenter,
//                        ),
                      color: Color(0xff5EBBB4)
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
                      onTap: ()=>{},
                      child: Container(
                        width: width * 0.35,
                        padding: EdgeInsets.symmetric(vertical: height * 0.015),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
//                          gradient: LinearGradient(
//                            colors: const [
//                              Colors.red, Colors.redAccent
//                            ],
//                            begin: Alignment.bottomCenter,
//                            end: Alignment.topCenter,
//                          ),
                            color: Color(0xff5EBBB4)
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Medications',
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
//                          gradient: LinearGradient(
//                            colors: const [
//                              Colors.red, Colors.redAccent
//                            ],
//                            begin: Alignment.bottomCenter,
//                            end: Alignment.topCenter,
//
                            color: Color(0xff5EBBB4)
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Health Data',
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
                          color: Colors.blueGrey,
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