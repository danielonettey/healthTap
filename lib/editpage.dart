import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {

  doneClicked(){
    print("Printing data");
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
          FlatButton.icon(onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.done_all), label: Text(''))
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

              ProfileTextField(title: 'First Name', hint: 'Emmanuel',),
              ProfileTextField(title: 'Last Name', hint: 'Antwi',),
              ProfileTextField(title: 'Date of Birth'),
              ProfileTextField(title: 'Sex'),
              ProfileTextField(title: 'Height'),
              ProfileTextField(title: 'Weight'),


              // Container(
              //   padding: EdgeInsets.only(top: height * 0.05, bottom: height * 0.02),
              //   decoration: BoxDecoration(
              //       border: Border(
              //           bottom: BorderSide(
              //               width: 0.75,
              //               color: Colors.grey
              //           )
              //       )
              //   ),
              //   alignment: Alignment.bottomLeft,
              //   child: Text(
              //     'Medical History',
              //     style: TextStyle(
              //         color: Colors.black,
              //         fontWeight: FontWeight.w600,
              //         fontSize: width * 0.05
              //     ),
              //   ),
              // ),

              // ProfileTextField(title: 'First Name', hint: 'Emmanuel',),
              // ProfileTextField(title: 'Last Name', hint: 'Antwi',),
              // ProfileTextField(title: 'Date of Birth'),
              // ProfileTextField(title: 'Sex'),
              // ProfileTextField(title: 'Height'),
              // ProfileTextField(title: 'Weight'),

              Container(
                  margin: EdgeInsets.symmetric(vertical: height * 0.05),
                  child: InkWell(
                    onTap: ()=>{doneClicked()},
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
  final int lines;

  const ProfileTextField({Key key, this.title, this.hint, this.lines}) : super(key: key);
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
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: width * 0.038
                ),
                maxLines: widget.lines!=null ? widget.lines : 1,
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