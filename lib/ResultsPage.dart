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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff4f8d88),
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
                  'Lab tests play an important role in your health care '
                      'but they don\'t provide a complete picture of your health. '
                      'Your provider will likely include tests and procedures to help guide '
                      'diagnosis and treatment decisions.',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: width * 0.042,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),

              Container(
                width: width * 0.5,
                padding: EdgeInsets.symmetric(vertical: height * 0.05),
                margin: EdgeInsets.only(bottom: height * 0.05),
                decoration: BoxDecoration(
                  color: Color(0xff4f8d88),
                  border: Border.all(
                    color: Colors.white,
                    width: 2
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/file_upload.png', height: height * 0.1),
                    Container(
                      padding: EdgeInsets.only(top: height * 0.02),
                      child: Text(
                        'Upload Results',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: width * 0.046

                        ),
                      ),
                    )

                  ],
                ),
              ),

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
      padding: EdgeInsets.all(width * 0.05),
      decoration: BoxDecoration(
        color: Color(0xff4f8d88),
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
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
                  fontSize: width * 0.045,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          Container(
            width: width,
            padding: EdgeInsets.symmetric(vertical: height * 0.02),
            child: Text(
              'https://www.google.com/search?q=googlge+drive&rlz=1C1CHBF_enGH885GH885&oq=googlge+drive&aqs=chrome..69i57j0l7.4443j0j7&sourceid=chrome&ie=UTF-8',
              style: TextStyle(
                  color: Colors.red,
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
