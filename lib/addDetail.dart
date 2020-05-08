import 'package:flutter/material.dart';

class AddDetailPage extends StatefulWidget {
  @override
  _AddDetailPageState createState() => _AddDetailPageState();
}

class _AddDetailPageState extends State<AddDetailPage> {
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
      backgroundColor: Color(0xff5EBBB4),
      appBar: AppBar(
        backgroundColor: Color(0xff5EBBB4),
        title: Text(
          'Height',

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
                padding: EdgeInsets.only(top: height * 0.02, bottom: height * 0.02,right: width * 0.05 ),
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
                        'Date',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        months[DateTime.now().month - 1] + ' ' +
                              DateTime.now().day.toString()+ ', ' +
                              DateTime.now().year.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: height * 0.02, bottom: height * 0.02,right: width * 0.05 ),
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
                        'Time',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                          DateTime.now().hour <12 ?
                          DateTime.now().hour.toString() + ':' + (DateTime.now().minute < 10 ? '0': '' )+
                            DateTime.now().minute.toString()  +' am':
                          (DateTime.now().hour-12).toString() + ':' + (DateTime.now().minute < 10 ? '0': '' )+
                              DateTime.now().minute.toString()   + ' pm'
                        ,


                        style: TextStyle(
                            color: Colors.black,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
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
                        'Height',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Container(
                      width: width * 0.3,
                      child: TextFormField(
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: width * 0.038
                          ),
                          decoration: InputDecoration(
                            hintText: 'Add item',
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
