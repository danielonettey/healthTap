
import 'package:flutter/material.dart';
import 'package:nfcflutter/addDetail.dart';

class CategoryDetails extends StatefulWidget {
  final String name;
  final String answer;

  const CategoryDetails({Key key, this.name, this.answer}) : super(key: key);
  @override
  _CategoryDetailsState createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {

  Map _aboutCategory = {
    'Height': 'Human height or stature is the distance from the bottom'
    ' of the feet to the top of the head in a human body, standing erect.'
    ' It is usually measured in centimetres when using the metric system,'
    ' or feet and inches when using the imperial system.',

    'Weight': "Human body weight refers to a person's mass or weight."
    ' Body weight is measured in kilograms, a measure of mass.',

    'Age' : 'Age is the amount of time during which a person has lived. '
    'This is typically measured in years.',    

    'Body Mass Index' : "Body Mass Index (BMI) is a person's weight in kilograms "
    'divided by the square of height in meters. A high BMI can be an indicator'
    ' of high body fatness. BMI can be used to screen for weight categories '
    'that may lead to health problems but it is not diagnostic of'
    ' the body fatness or health of an individual.',

    'Allergies' : ' An allergy is an immune system response to a foreign substance '
    "that's not typically harmful to your body. These foreign substances are called"
    ' allergens. They can include certain foods, pollen, or pet dander.',

    'Medications' : 'A medication is a drug used to diagnose, cure, treat, or prevent '
    'disease. Drug therapy (pharmacotherapy) is an important part of the medical '
    'field and relies on the science of pharmacology for continual '
    'advancement and on pharmacy for appropriate management.',

    'Immunizations' : 'Immunization is the process whereby a person is made immune or '
    'resistant to an infectious disease, typically by the administration of a vaccine.'
    " Vaccines stimulate the body's own immune system to protect the person against subsequent infection or disease",

    'Existing conditions' : 'An existing condition is any condition for which'
    ' a patient has already received medical advice or treatment.',

    'Blood Pressure' : 'Blood pressure readings have two numbers, for example 140/90mmHg.'
    ' The top number is your systolic blood pressure. (The highest pressure when your'
    ' heart beats and pushes the blood round your body.) The bottom one is your diastolic '
    'blood pressure. (The lowest pressure when your heart relaxes between beats.)'
    "They're both measured in millimetres of mercury (mmHg).",

    'Body Temperature' : 'Normal human body-temperature is the typical temperature range found in humans.'
    ' The normal human body temperature range is typically stated as 36.5–37.5 °C. Human body temperature varies..',

    'Heart Rate' : "Heart rate, also known as pulse, is the number of times a person's"
    ' heart beats per minute. Normal heart rate varies from person to person, '
    'but a normal range for adults is 60 to 100 beats per minute, according to the Mayo Clinic. '
    'A normal resting heart rate for adults ranges from 60 to 100 beats per minute. Generally, '
    'a lower heart rate at rest implies more efficient heart function and better cardiovascular fitness.',

    'Respiratory rate' : "A person's respiratory rate is the number of "
    'breaths he/she takes per minute. The normal respiration rate for'
    ' an adult at rest is 12 to 20 breaths per minute.'
    '\nA respiration rate under 12 or over 25 breaths '
    'per minute while resting is considered abnormal.',

    'Cholesterol' : "Cholesterol is a waxy, fat-like substance that's found "
    'in all the cells in your body. Your body needs some cholesterol to make hormones,'
    ' vitamin D, and substances that help you digest foods. Your body makes all the cholesterol it needs.',

    'Dietary Energy' : 'The dietary energy supply is the food available for '
    'human consumption, usually expressed in kilocalories or kilojoules per person per day.'
    'Dietary energy is derived from fats, carbohydrates, and, to a lesser extent, dietary protein.',

    'Biotin' : 'Biotin also called vitamin H, vitamin B₇ or vitamin B₈ is'
    ' a water-soluble B vitamin. It is involved in a wide range of '
    'metabolic processes, both in humans and in other organisms,'
    ' primarily related to the utilization of fats, carbohydrates, and amino acids.',
    ' Your body needs biotin to help convert certain nutrients into energy.'
    ' It also plays an important role in the health of your hair, skin, and nails.'

    'Caffeine' : 'Caffeine is a natural stimulant most commonly found in tea,'
    ' coffee and cacao plants. It works by stimulating the brain and central'
    ' nervous system, helping you to stay alert and preventing the onset of tiredness. ',



  };


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4f8d88),
        title: Text(
            widget.name,
        ),
        actions: <Widget>[
          FlatButton(
            onPressed:  ()=>Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AddDetailPage(
                      name: widget.name
                    )
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
      backgroundColor: Color(0xff4f8d88),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          margin: EdgeInsets.symmetric(horizontal: width * 0.05),
          padding: EdgeInsets.only(top: height * 0.025),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  widget.answer,
                  style: TextStyle(
                      color: Colors.white,
                    fontSize: width * 0.08,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Today',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.08),
                padding: EdgeInsets.only(bottom: height * 0.01),
                alignment: Alignment.topLeft,
                child: Text(
                  'About ' + widget.name,
                  style: TextStyle(
                    color: Colors.white,
                      fontSize: width * 0.05,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Container(
                width: width,
                padding: EdgeInsets.all(width * 0.025),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Text(
                  _aboutCategory[widget.name],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: width * 0.036,
                    fontWeight: FontWeight.w500
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
