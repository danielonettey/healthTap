import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nfc_in_flutter/nfc_in_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: 'Quicksand',
      ),
      home: Homepage(),
//      home: MyHomePage(title: 'NFC HealthTap'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  StreamSubscription<NDEFMessage> _stream;

  List<NDEFMessage> _tags = [];

  bool _supportsNFC = false;

  // _readNFC() calls `NFC.readNDEF()` and stores the subscription and scanned
  // tags in state
  void _readNFC(BuildContext context) {
    try {
      // ignore: cancel_subscriptions
      StreamSubscription<NDEFMessage> subscription = NFC.readNDEF().listen(
              (tag) {
            // On new tag, add it to state
            setState(() {
              _tags.insert(0, tag);
            });
          },
          // When the stream is done, remove the subscription from state
          onDone: () {
            setState(() {
              _stream = null;
            });
          },
          // Errors are unlikely to happen on Android unless the NFC tags are
          // poorly formatted or removed too soon, however on iOS at least one
          // error is likely to happen. NFCUserCanceledSessionException will
          // always happen unless you call readNDEF() with the `throwOnUserCancel`
          // argument set to false.
          // NFCSessionTimeoutException will be thrown if the session timer exceeds
          // 60 seconds (iOS only).
          // And then there are of course errors for unexpected stuff. Good fun!
          onError: (e) {
            setState(() {
              _stream = null;
            });

            if (!(e is NFCUserCanceledSessionException)) {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text("Error!"),
                  content: Text(e.toString()),
                ),
              );
            }
          });

      setState(() {
        _stream = subscription;
      });
    } catch (err) {
      print("error: $err");
    }
  }

  // _stopReading() cancels the current reading stream
  void _stopReading() {
    _stream?.cancel();
    setState(() {
      _stream = null;
    });
  }

  @override
  void initState() {
    super.initState();
    NFC.isNDEFSupported.then((supported) {
      setState(() {
        _supportsNFC = true;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _stream?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('NFC in Flutter'),
          actions: <Widget>[
            Builder(
              builder: (context) {
                if (!_supportsNFC) {
                  return FlatButton(
                    child: Text("NFC unsupported"),
                    onPressed: null,
                  );
                }
                return FlatButton(
                  child:
                  Text(_stream == null ? "Start reading" : "Stop reading"),
                  onPressed: () {
                    if (_stream == null) {
                      _readNFC(context);
                    } else {
                      _stopReading();
                    }
                  },
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.clear_all),
              onPressed: () {
                setState(() {
                  _tags.clear();
                });
              },
              tooltip: "Clear",
            ),
          ],
        ),
        // Render list of scanned tags
        body: ListView.builder(
          itemCount: _tags.length,
          itemBuilder: (context, index) {
            const TextStyle payloadTextStyle = const TextStyle(
              fontSize: 15,
              color: const Color(0xFF454545),
            );

            return Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text("NDEF Tag",
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Builder(
                    builder: (context) {
                      // Build list of records
                      List<Widget> records = [];
                      for (int i = 0; i < _tags[index].records.length; i++) {
                        records.add(Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Record ${i + 1} - ${_tags[index].records[i].type}",
                              style: const TextStyle(
                                fontSize: 13,
                                color: const Color(0xFF666666),
                              ),
                            ),
                            Text(
                              _tags[index].records[i].payload,
                              style: payloadTextStyle,
                            ),
                            Text(
                              _tags[index].records[i].data,
                              style: payloadTextStyle,
                            ),
                          ],
                        ));
                      }
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: records,
                      );
                    },
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class trial extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'widget.title',
        style: TextStyle(
          color: Colors.white
        ),
        ),
        backgroundColor: Color.fromRGBO(48, 48, 48, 1),
        actions: <Widget>[
          InkWell(
              onTap: ()=>{},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  Icons.launch,
                  color: Colors.white,
                ),
              )
          )],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: width * 0.4,
                  height: width * 0.4,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(48, 48, 48, 1), width: 2),borderRadius: BorderRadius.all(Radius.circular(200)),
                   ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(200)),
                    child: Image(
                      image: AssetImage('assets/megan.png'),
                      width: width * 0.4,
                    ),
                  ),
                ),
                Container(
                  width: width,
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: ()=>{

                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: width * 0.4,
                      height: width * 0.4,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(48, 48, 48, 1),
                            width: 2
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(200)),
                      ),
                      child: ClipRRect(
                        child: FlatButton.icon(
                            onPressed: ()=>{},
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            icon: Icon(Icons.touch_app),
                            label: Text(''),
                        ),
                      ),
                    ),
                  ),
                )
              ],
          ),
        ),
      ),

//      bottomNavigationBar: BottomNavigationBar(
//        backgroundColor: Color.fromRGBO(48, 48, 48, 1),
//        unselectedLabelStyle: TextStyle(
//          fontSize: MediaQuery.of(context).size.width * 0.031,
//          fontWeight: FontWeight.bold,
//        ),
//        selectedLabelStyle: TextStyle(
//          fontSize: MediaQuery.of(context).size.width * 0.031,
//          fontWeight: FontWeight.bold,
//        ),
//        showUnselectedLabels: true,
//        elevation: 21,
//        items: const <BottomNavigationBarItem>[
//
//          BottomNavigationBarItem(
//            icon: Icon(Icons.mode_edit),
//            title: Text('Edit Profile'),
//
//          ),
//
//          BottomNavigationBarItem(
//            icon: Icon(Icons.picture_in_picture),
//            title: Text('View Profile'),
//          ),
//
//          BottomNavigationBarItem(
//            icon: Icon(Icons.home),
//            title: Text('Home'),
//          ),
//
//        ],
//        currentIndex: _selectedIndex,
//        selectedItemColor: Colors.white,
//        unselectedItemColor: Colors.white,
//        onTap: (int index) {
//          setState(() {
//            _selectedIndex = index;
//          });
//        },
//      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          margin: EdgeInsets.only(top: height * 0.1),
          child: Column(
            children: <Widget>[
              Container(
              child: Text(
                'Welcome to NFC Health Tap!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: width * 0.058,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
               Container(
                  margin: EdgeInsets.only(top: height * 0.05, right: width * 0.2, left: width * 0.2),
                  width: width * 0.5,
                  height: width * 0.5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    child: InkWell(
                      onTap: ()=>{},
                      child: Container(
                        padding: EdgeInsets.all(width * 0.05),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          gradient: LinearGradient(
                            colors: const [
                              Colors.red, Colors.redAccent
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image(
                              image: AssetImage('assets/health_icon.png'),
                              height:  height * 0.12,
                            ),
                            Container(
                              child: Text(
                                'Health Tips',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.05,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              Container(
                margin: EdgeInsets.only(top: height * 0.05),
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: ()=>
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EditPage()),
                        ),
                      child: Container(
                        width: width * 0.35,
                        padding: EdgeInsets.symmetric(vertical: height * 0.015),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                            colors: const [
                              Colors.red, Colors.redAccent
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Edit',
                          style: TextStyle(
                            fontSize: width * 0.045,
                            fontWeight: FontWeight.w600,
                            color: Color(0xfffbfbfb),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: ()=>{},
                      child: Container(
                        width: width * 0.35,
                        padding: EdgeInsets.symmetric(vertical: height * 0.015),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                            colors: const [
                              Colors.red, Colors.redAccent
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Transfer',
                          style: TextStyle(
                            fontSize: width * 0.045,
                            fontWeight: FontWeight.w600,
                            color: Color(0xfffbfbfb),
                            fontFamily: 'Quicksand'
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: width,
                margin: EdgeInsets.only(top: height * 0.05),
                padding: EdgeInsets.only(top: height * 0.03),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.grey,
                      width: 0.5
                    ),

                  )
                ),
                child: Text(
                  'Personal Information',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: width * 0.056,
                    fontWeight: FontWeight.w700
                  ),
                ),
              ),

              Container(
                width: width,
                child: Column(
                  children: <Widget>[
                    InfoData(title: 'Full Name',result: 'Daniel Okaitei Nettey',),
                    TwoInfoData(firstTitle: 'Age',secondTitle: 'Gender',firstResult: '20',secondResult: 'Male',),
                    TwoInfoData(firstTitle: 'Weight',secondTitle: 'Height',firstResult: '200kg',secondResult: '6 feet',),
                    TwoInfoData(firstTitle: 'Marital Status',secondTitle: 'Emergency Contact',firstResult: 'Divorced',secondResult: '0559418732',),
                    InfoData(title: 'Allergies',result: 'Banku and shito fish \nAnd sometimes Fufu with aponkye',),
                    InfoData(title: 'Medical History',result: '2 ahsbd jgshd kjgshfjk gshdjkf gsjkdgf jksdhgfjk gsdhfj gsdhjf gdsjkf gsdjkgf jshdgf jksghdf jkgh0',),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}


class EditTextField extends StatefulWidget {
  final String title;
  final bool number_only;
  final double fontSize;
  final String hint;

  const EditTextField({Key key, this.title, this.number_only, this.fontSize, this.hint}) : super(key: key);
  @override
  _EditTextFieldState createState() => _EditTextFieldState();
}

class _EditTextFieldState extends State<EditTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Text(
            widget.title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: MediaQuery.of(context).size.width * 0.047,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.01, bottom: 20),
            child: TextField(
              keyboardType: widget.number_only == true ? TextInputType.phone : TextInputType.text,
              decoration: InputDecoration(
                hintText: widget.hint,
                contentPadding: EdgeInsets.only(bottom: -20.0),
                hintStyle: TextStyle(
                  color: Colors.black,
                  height: 0.1,
                  fontSize: MediaQuery.of(context).size.width * 0.043,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InfoData extends StatefulWidget {
  final String title;
  final String result;

  const InfoData({Key key, this.title, this.result}) : super(key: key);

  @override
  _InfoDataState createState() => _InfoDataState();
}

class _InfoDataState extends State<InfoData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
//      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.bottomLeft,
            child: Text(
              widget.title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: MediaQuery.of(context).size.width * 0.045,
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Text(
              widget.result,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: MediaQuery.of(context).size.width * 0.043,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TwoInfoData extends StatefulWidget {
  final String firstTitle;
  final String secondTitle;
  final String firstResult;
  final String secondResult;

  const TwoInfoData({Key key, this.firstTitle, this.secondTitle, this.firstResult, this.secondResult}) : super(key: key);
  @override
  _TwoInfoDataState createState() => _TwoInfoDataState();
}

class _TwoInfoDataState extends State<TwoInfoData> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Expanded(
          child: InfoData(title: widget.firstTitle,result: widget.firstResult,),
        ),
        Expanded(
          child: InfoData(title: widget.secondTitle,result: widget.secondResult,),
        )
      ],
    );
  }
}


class EditPage extends StatefulWidget {
  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',

        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: height * 0.02),
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            children: <Widget>[
              Container(
                child: Text(
                    'Personal Information',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: width * 0.05
                  ),
                ),
              ),
              EditTextField(title: 'Full name',hint: 'Enter full name',fontSize: width * 0.05,)
            ],
          ),
        ),
      ),
    );
  }
}


