import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'addMedication.dart';


class MedicationPage extends StatefulWidget {
  @override
  _MedicationPageState createState() => _MedicationPageState();
}



class _MedicationPageState extends State<MedicationPage> {

  Map medications = {
    'Paracetamol': ['2 x Daily','05/05/2020', '05/10/2020'],
    'Mogya Eduro': ['3 x Daily','03/05/2019', '05/10/2020'],
    'Mogya Eduro': ['3 x Daily','03/05/2019', '05/10/2020'],
  };

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff4f8d88),
        title: Text(
          'Medication'
        ),
        actions: <Widget>[
          FlatButton(
            onPressed:  ()=>Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AddMedicationPage()
                )
            ),
            child: Text(
              'Add Data',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: width * 0.04
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          margin: EdgeInsets.only(top: height * 0.03),
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            children: medications.entries.map((item) => Medication(drug: item.key,dosage: item.value[0],startDate: item.value[1],endDate: item.value[2],)).toList()
          ),
        ),
      ),
    );
  }
}

class Medication extends StatefulWidget {
  final String drug;
  final String dosage;
  final String startDate;
  final String endDate;

  const Medication({Key key, this.drug, this.dosage, this.startDate, this.endDate}) : super(key: key);
  @override
  _MedicationState createState() => _MedicationState();
}

class _MedicationState extends State<Medication> {



  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(width * 0.04),
      margin: EdgeInsets.only(bottom: height * 0.02),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xff4f8d88)
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(width * 0.015),
              child: Image(
                image: AssetImage('assets/pill.png'),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: EdgeInsets.only(left: width * 0.05),
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      widget.drug,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      widget.dosage,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 0.045,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'From',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.045,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                widget.startDate,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.04,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'End',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.045,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                widget.endDate,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.04,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
