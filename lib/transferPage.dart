import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart';

import 'package:flutter/material.dart';
import 'package:nfc_hce_reader/nfc_hce_reader.dart';


class TransferDataPage extends StatefulWidget {
  @override
  _TransferDataPageState createState() => _TransferDataPageState();
}

class _TransferDataPageState extends State<TransferDataPage> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff4f8d88),
        title: Text(
          'Transfer Data'
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          margin: EdgeInsets.only(top: height * 0.03),
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(bottom: height * 0.025),
                child: Text(
                  'Recipient: Dr. Daniel Nettey',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: width * 0.06,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(bottom: height * 0.05),
                child: Text(
                  'Double tap on icon below to transfer data',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.05),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(500)),
                  child: InkWell(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => NFCPage())),
                    child: Container(
                      width: width * 0.6,
                      height: width * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(500)),
                          color: Colors.black
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/arrows.png'),
                            height:  height * 0.18,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
//                Image.asset('assets/arrows.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NFCPage extends StatefulWidget {
  @override
  _NFCPageState createState() => _NFCPageState();
}

class _NFCPageState extends State<NFCPage> {

  String _message = 'none';
  StreamSubscription<String> _stream;
  bool _isNFCAvaliable = false;
  bool _isPlatformIOS = Platform.isIOS;

  @override
  void initState() {
    super.initState();
    NfcHceReader.isNFCAvailable.then((supported){
      setState(() {
        _isNFCAvaliable = supported;
        if(!_isPlatformIOS && _isNFCAvaliable)
          initPlatformState();
      });
    });

  }

  Future<void> initPlatformState() async {
    try {
      await NfcHceReader.initializeNFCReading();
      _readNFC(context);
      print('Working');
    } on PlatformException {

    }
    if (!mounted) return;
  }

  void _readNFC(BuildContext context) {

    StreamSubscription<String> subscription = NfcHceReader.readNFCStream()
        .listen((tag) {
      setState(() {
        _message = tag;
        _stream?.cancel();
      });
    },
        onDone: () {
          setState(() {
            _stream = null;
          });
        },
        onError: (e) {
          setState(() {
            _stream = null;
          });
        });
    setState(() {
      _stream = subscription;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer Data'),
        backgroundColor: Color(0xff4f8d88),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('isNFCEnabled $_isNFCAvaliable'),
              Visibility(
                visible: _isPlatformIOS ,
                child: FlatButton(onPressed: () => initPlatformState(),
                  child: Text('Running on: $_message\n'),
                ),
              ),
            ],
          )
      ),
    );
  }
}