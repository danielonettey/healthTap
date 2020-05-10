import 'package:flutter/material.dart';


class AddMedicationPage extends StatefulWidget {
  @override
  _AddMedicationPageState createState() => _AddMedicationPageState();
}

class _AddMedicationPageState extends State<AddMedicationPage> {

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
    return Scaffold(
      backgroundColor: Color(0xff4f8d88),
      appBar: AppBar(
        backgroundColor: Color(0xff4f8d88),
        title: Text(
          'Medication',
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: ()=> Navigator.pop(context),
            child: Text(
              'Add',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: width * 0.045
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
            decoration: BoxDecoration(
              color: Colors.white,
                border: Border(
                    top: BorderSide(
                      color: Colors.grey,
                      width: 2
                  )
                )
            ),
          margin: EdgeInsets.only(top: height * 0.05),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: width * 0.05 ),
                margin: EdgeInsets.only(left: width * 0.05),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(
                            color: Colors.grey,
                            width: 0.5
                        )
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Drug',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Container(
                      width: width * 0.7,
                      child: TextFormField(
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: width * 0.038
                          ),
                          decoration: InputDecoration(
                            hintText: 'Add Drug',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.75,
                                  color: Colors.transparent
                              ),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.75,
                                  color: Colors.transparent
                              ),
                            ),
                            disabledBorder: null,
                            errorBorder: null,
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.75,
                                  color: Colors.transparent
                              ),
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              height: 0.1,
                            ),
                          )
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: width * 0.05 ),
                margin: EdgeInsets.only(left: width * 0.05),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(
                            color: Colors.grey,
                            width: 0.5
                        )
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Dosage',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Container(
                      width: width * 0.7,
                      child: TextFormField(
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: width * 0.038
                          ),
                          decoration: InputDecoration(
                            hintText: 'Add Dosage',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.75,
                                  color: Colors.transparent
                              ),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.75,
                                  color: Colors.transparent
                              ),
                            ),
                            disabledBorder: null,
                            errorBorder: null,
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.75,
                                  color: Colors.transparent
                              ),
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              height: 0.1,
                            ),
                          )
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: width * 0.05 ),
                margin: EdgeInsets.only(left: width * 0.05),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(
                            color: Colors.grey,
                            width: 0.5
                        )
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Start Date',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Container(
                      width: width * 0.7,
                      child: TextFormField(
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: width * 0.038
                          ),
                          decoration: InputDecoration(
                            hintText: 'Add Start Date',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.75,
                                  color: Colors.transparent
                              ),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.75,
                                  color: Colors.transparent
                              ),
                            ),
                            disabledBorder: null,
                            errorBorder: null,
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.75,
                                  color: Colors.transparent
                              ),
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              height: 0.1,
                            ),
                          )
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: width * 0.05, left: width * 0.05 ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(
                            color: Colors.grey,
                            width: 2
                        )
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'End Date',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Container(
                      width: width * 0.7,
                      child: TextFormField(
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: width * 0.038
                          ),
                          decoration: InputDecoration(
                            hintText: 'Add End Date',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.75,
                                  color: Colors.transparent
                              ),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.75,
                                  color: Colors.transparent
                              ),
                            ),
                            disabledBorder: null,
                            errorBorder: null,
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0.75,
                                  color: Colors.transparent
                              ),
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              height: 0.1,
                            ),
                          )
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
