
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
    'Height': 'Height is measure of vertical distance, either vertical extent '
        '(how "tall" something or someone is) or vertical position (how "high" a point is).\n\n'
        ' For example, "The height of that building is 50 m" or "The height of an airplane is about 10,000 m". '
        'When the term is used to describe vertical position '
        '(of, e.g., an airplane) from sea level, height is more often '
        'called altitude. Furthermore, if the point is attached '
        'to the Earth (e.g., a mountain peak), then altitude (height above '
        'sea level) is called elevation.\n\nIn a Cartesian space, height is '
        'measured along the vertical axis (y) between a specific point and '
        'another that does not have the same y-value. If both points happen '
        'to have the same y-value, then their relative height equal to zero.',

    'Weight': 'I think about weight is a very incredible idea that can be used for a lot of thing right now but then '
        'i think i should just lorem this page to make everything easier \n\n'
        'Or what do you think',

    'Age' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' 
    'Integer venenatis volutpat sapien cursus porta. Proin id metus eget felis dictum ultrices ac ut nulla. '
    'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'
    'Praesent eu metus felis. Aliquam aliquet ex vitae rhoncus sagittis.',    

    'Body Mass' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' 
    'Integer venenatis volutpat sapien cursus porta. Proin id metus eget felis dictum ultrices ac ut nulla. '
    'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'
    'Praesent eu metus felis. Aliquam aliquet ex vitae rhoncus sagittis.',

    'Allergies' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' 
    'Integer venenatis volutpat sapien cursus porta. Proin id metus eget felis dictum ultrices ac ut nulla. '
    'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'
    'Praesent eu metus felis. Aliquam aliquet ex vitae rhoncus sagittis.',

    'Medications' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' 
    'Integer venenatis volutpat sapien cursus porta. Proin id metus eget felis dictum ultrices ac ut nulla. '
    'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'
    'Praesent eu metus felis. Aliquam aliquet ex vitae rhoncus sagittis.',

    'Immunizations' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' 
    'Integer venenatis volutpat sapien cursus porta. Proin id metus eget felis dictum ultrices ac ut nulla. '
    'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'
    'Praesent eu metus felis. Aliquam aliquet ex vitae rhoncus sagittis.',

    'Existing conditions' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' 
    'Integer venenatis volutpat sapien cursus porta. Proin id metus eget felis dictum ultrices ac ut nulla. '
    'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'
    'Praesent eu metus felis. Aliquam aliquet ex vitae rhoncus sagittis.',

    'Blood Pressure' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' 
    'Integer venenatis volutpat sapien cursus porta. Proin id metus eget felis dictum ultrices ac ut nulla. '
    'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'
    'Praesent eu metus felis. Aliquam aliquet ex vitae rhoncus sagittis.',

    'Body Temperature' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' 
    'Integer venenatis volutpat sapien cursus porta. Proin id metus eget felis dictum ultrices ac ut nulla. '
    'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'
    'Praesent eu metus felis. Aliquam aliquet ex vitae rhoncus sagittis.',

    'Heart Rate' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' 
    'Integer venenatis volutpat sapien cursus porta. Proin id metus eget felis dictum ultrices ac ut nulla. '
    'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'
    'Praesent eu metus felis. Aliquam aliquet ex vitae rhoncus sagittis.',

    'Menstruation' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' 
    'Integer venenatis volutpat sapien cursus porta. Proin id metus eget felis dictum ultrices ac ut nulla. '
    'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'
    'Praesent eu metus felis. Aliquam aliquet ex vitae rhoncus sagittis.',

    'Cholesterol' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' 
    'Integer venenatis volutpat sapien cursus porta. Proin id metus eget felis dictum ultrices ac ut nulla. '
    'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'
    'Praesent eu metus felis. Aliquam aliquet ex vitae rhoncus sagittis.',

    'Dietary Energy' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' 
    'Integer venenatis volutpat sapien cursus porta. Proin id metus eget felis dictum ultrices ac ut nulla. '
    'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'
    'Praesent eu metus felis. Aliquam aliquet ex vitae rhoncus sagittis.',

    'Biotin' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' 
    'Integer venenatis volutpat sapien cursus porta. Proin id metus eget felis dictum ultrices ac ut nulla. '
    'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'
    'Praesent eu metus felis. Aliquam aliquet ex vitae rhoncus sagittis.',

    'Caffeine' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' 
    'Integer venenatis volutpat sapien cursus porta. Proin id metus eget felis dictum ultrices ac ut nulla. '
    'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'
    'Praesent eu metus felis. Aliquam aliquet ex vitae rhoncus sagittis.',



  };


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5EBBB4),
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
      backgroundColor: Color(0xff5EBBB4),
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
