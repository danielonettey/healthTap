import 'package:flutter/material.dart';


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
      backgroundColor: Color(0xff5EBBB4),
      appBar: AppBar(
        backgroundColor: Color(0xff5EBBB4),
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
                  'Double tap on icon below to transfer data',
                  style: TextStyle(
                      color: Colors.white,
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
                    onTap: ()=>{},
                    child: Container(
                      width: width * 0.6,
                      height: width * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(500)),
                          color: Colors.white
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/arrows.png'),
                            height:  height * 0.15,
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