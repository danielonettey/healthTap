import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {

  doneClicked(){
    //print it literally
    print(fname.text);
    print(sname.text);
    print(dob.text);
    print(sex.text);
    //Leave that screen
    Navigator.pop(context);
  }

  final fname = TextEditingController();
  final sname = TextEditingController();
  final dob = TextEditingController();
  final sex = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4f8d88),
        title: Text(
          'Edit Profile',
        ),
        actions: <Widget>[
          FlatButton.icon(onPressed: doneClicked, icon: Icon(Icons.done_all), label: Text(''))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: height * 0.02),
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: height * 0.025),
                child: Image(
                  image: AssetImage('assets/user.png'),
                  height:  height * 0.2,
                ),
              ),
              Container(
                child: Text(
                  'Set up your Health profile',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: width * 0.06,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                margin: EdgeInsets.only(top: height * 0.01),
                child: Text(
                  'Your health profile is the basic information the app needs to'
                      ' transfer to another user in terms of emergencies',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: height * 0.05, bottom: height * 0.02),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 0.75,
                            color: Colors.grey
                        )
                    )
                ),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Personal Information',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: width * 0.05
                  ),
                ),
              ),

              ProfileTextField(title: 'First Name', hint: 'Emmanuel',controller: fname,),
              ProfileTextField(title: 'Last Name', hint: 'Antwi',controller: sname,),
              ProfileTextField(title: 'Date of Birth', controller: dob,),
              ProfileTextField(title: 'Sex',controller: sex,),

              Container(
                  margin: EdgeInsets.symmetric(vertical: height * 0.05),
                  padding: EdgeInsets.only(top: height * 0.02),
                  child: InkWell(
                    onTap: doneClicked,
                    child: Container(
                      width: width * 0.8,
                      padding: EdgeInsets.symmetric(vertical: height * 0.02),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        color: Color(0xff4f8d88),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Done',
                        style: TextStyle(
                          fontSize: width * 0.045,
                          fontWeight: FontWeight.w600,
                          color: Color(0xfffbfbfb),
                        ),
                      ),
                    ),
                  )
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class ProfileTextField extends StatefulWidget {
  final String title;
  final String hint;
  final TextEditingController controller;

  const ProfileTextField({Key key, this.title, this.hint, this.controller}) : super(key: key);

  @override
  _ProfileTextFieldState createState() => _ProfileTextFieldState();
}

class _ProfileTextFieldState extends State<ProfileTextField> {





  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.75
              )
          )
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Text(
              widget.title,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.038
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: TextFormField(
                controller: widget.controller,
//                onEditingComplete: ()=>{
//                  print(myController.text),
//                },
//                onChanged: (a)=>{
//                  print(a),
//                },
//                onSaved: (a)=>{
//                  print(a),
//                },
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: width * 0.038
                ),
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: widget.hint != null ? widget.hint: 'Optional',
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
    );
  }
}