import 'package:flutter/material.dart';
import 'package:nfcflutter/subcategorypage.dart';


//A map of categories, subcategories and results for each of them
final _subcategories = {
  'Body Measurements': {
    'Height' : '6" 0"',
    'Weight': null,
    'Age': null,
    'Body Mass': null,
    },
  'Health Records': {
    'Allergies' : null,
    'Medications': null,
    'Immunizations': null,
    'Existing conditions': null,
  },
  'Vitals': {
    'Blood Pressure' : null,
    'Body Temperature': null,
    'Heart Rate': null,
    'Respiratory rate': null,
  },
  'Nutrition': {
    'Cholesterol' : null,
    'Dietary Energy': null,
    'Biotin': null,
    'Caffeine': null,
  },

  

};

final images_categories = {
  'Body Measurements' : 'assets/tools.png',
  'Nutrition' : 'assets/apple.png',
  'Health Records' : 'assets/medical-record.png',
  'Vitals' : 'assets/health_icon12.png',

};



class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff4f8d88),
      appBar: AppBar(
        backgroundColor: Color(0xff4f8d88),
        title: Text(
          'Health Data'
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          margin: EdgeInsets.only(top: height * 0.01),
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(bottom: height * 0.025),
                child: Text(
                  'Health Categories',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.06,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(bottom: height * 0.05),
                child: Text(
                  'These are the categories of health data for which you can record. '
                      'Feel free to input information for any category. '
                      'All information are kept within the confines of the application.  ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: width * 0.01, horizontal: width * 0.05),
                width: width,

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(
                  children:  _subcategories.keys.map((item) => Category(name: item,image: images_categories[item], last: _subcategories.keys.last == item ? true: false,),).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Category extends StatefulWidget {
  final String name;
  final String image;
  final bool last;

  const Category({Key key, this.name, this.image, this.last}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {

  final _briefTitle = <String, String>{
    'Nutrition':'Nutrition is the science that interprets'
    ' the nutrients and other substances in food in '
    'relation to maintenance, growth, reproduction, '
    'health and disease of an organism.\n'
    'It is simply the process of providing '
    'or obtaining the food necessary for health and growth.',

    'Body Measurements':'Body Measurements deal with the'
      ' measurement of body parts. It involves measuring'
      ' the body width, length and grith and it’s parts'
      ' in specific areas on the body.\nGoing to a tailor '
      'will give you more accurate measurements, but you '
      'can certainly get a close approximation handling the '
      'measuring tape yourself. ',

    'Health Records':'Health Record include any official diagnosis or'
        'past prescriptions that apply to you. This will make medical '
        'officials aware of any past or current conditions. ',

    'Vitals': "Vital signs are measurements of the body's"
    ' most basic functions. The four main vital signs '
    'routinely monitored by medical professionals and '
    'health care providers include: \n1. Body temperature '
    '\n2. Pulse rate \n3. Respiration rate (rate of breathing)'
    '\n4. Blood pressure (Blood pressure is not considered'
    ' a vital sign, but is often measured along with the vital signs.)'
    '\n\nVital signs are useful in detecting or monitoring'
    ' medical problems. Vital signs can be measured in '
    'a medical setting, at home, at the site '
    'of a medical emergency, or elsewhere.',    

  };


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      child: InkWell(
        onTap: ()=>Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SubCategoryPage(
                  image: widget.image,
                  title: widget.name,
                  subtitle: _briefTitle[widget.name],
                  subcategories: _subcategories[widget.name],
                )
            )
        ),

        child: Container(
          padding: EdgeInsets.symmetric(vertical: height * 0.02),
          decoration: BoxDecoration(
            border: widget.last == true ? Border():Border(
                bottom: BorderSide(
                    width: 1,
                    color: Colors.grey
                )
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: width * 0.03),
                    child: Image(
                      image: AssetImage(widget.image),
                      width: width * 0.06,

                    ),
                  ),
                  Container(
                    child: Text(
                      widget.name,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: width * 0.04
                      ),
                    ),
                  )
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: width * 0.05,
                color: Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
