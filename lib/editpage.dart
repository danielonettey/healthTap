import 'package:flutter/material.dart';
import 'dart:math';
//import 'package:flutter_for_people/hive/newexample/user.model.dart';
import 'package:hive/hive.dart';
import 'user.model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class EditPage extends StatefulWidget {
  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {

  Box _userBox;
  UserModel userModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Hive.registerAdapter(UserModelAdapter());
    _openBox();
  }

  Future _openBox() async {
    var dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    _userBox = await Hive.openBox('_userBox');
    return;
  }
//Function to call when button is clicked


  final fname = TextEditingController();
  final sname = TextEditingController();
  final dob = TextEditingController();
  final sex = TextEditingController();

  doneClicked(){
    //print it literally
    print(fname.text);
    print(sname.text);
    print(dob.text);
    print(sex.text);
    //Leave that screen

    UserModel userModel = UserModel(Random().nextInt(100), fname.text, sname.text, dob.text, sex.text, "", "");
    _userBox.add(userModel);
    
    Map<dynamic, dynamic> raw = _userBox.toMap();
    List list = raw.values.toList();
    userModel = list[1];
    Navigator.pop(context);
  }


  @override

  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6B9DA8),
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

              ProfileTextField(title: userModel.first_name, hint: 'Emmanuel',controller: fname,),
              ProfileTextField(title: userModel.last_name, hint: 'Antwi',controller: sname,),
              ProfileTextField(title: userModel.date0fBirth, controller: dob,),
              ProfileTextField(title: userModel.gender,controller: sex,),

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
                        color: Color(0xff5EBBB4),
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