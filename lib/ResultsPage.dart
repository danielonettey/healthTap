import 'package:flutter/material.dart';

class ResultsPage extends StatefulWidget {
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff5EBBB4),
      appBar: AppBar(
        backgroundColor: Color(0xff5EBBB4),
        title: Text(
            'Lab & Test Results'
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          margin: EdgeInsets.only(top: height * 0.03),
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(bottom: height * 0.025),
                child: Text(
                  'Lorem something some thisnf jdskf vhsdfhv snmdfb a,bfd hbasmdnfa smbfm sanvf, ndasvbmfn vadsnfvb jhsdfk jhbasdjf ads',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.043,
                  ),
                ),
              ),
//              Container(
//                alignment: Alignment.bottomLeft,
//                padding: EdgeInsets.only(bottom: height * 0.05),
//                child: Text(
//                  '',
//                  style: TextStyle(
//                      color: Colors.white,
//                      fontSize: width * 0.04,
//                      fontWeight: FontWeight.w500
//                  ),
//                ),
//              ),
              TestResults(),
              TestResults(),
              TestResults(),
              TestResults(),
            ],
          ),
        ),
      ),
    );
  }
}

class TestResults extends StatefulWidget {
  @override
  _TestResultsState createState() => _TestResultsState();
}

class _TestResultsState extends State<TestResults> {
  final months = [
    'January',
    'February ',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'November',
    'December',
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(top: height * 0.02),
      child: Column(
        children: <Widget>[
          Container(
            width: width,
            child: Text(
              months[DateTime.now().month - 1] + ' ' +
                  DateTime.now().day.toString()+ ', ' +
                  DateTime.now().year.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: width * 0.04,
                  fontWeight: FontWeight.w500
              ),
            ),
          ),
          Container(
            width: width,
            margin: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: height * 0.02),
            padding: EdgeInsets.symmetric(vertical: height * 0.01),
            decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),

                )
            ),
            child: Text(
              'Some random link that is clickable',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: width * 0.04,
                  fontWeight: FontWeight.w500
              ),
            ),
          )
        ],
      ),
    );
  }
}
