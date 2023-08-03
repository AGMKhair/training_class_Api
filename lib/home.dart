import 'package:flutter/material.dart';
import 'package:training_class_1/util.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Welcome!  ${Util.userName}"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 110.0),
                child: Center(
                  child: Container(
                      width: 200,
                      height: 100,
                      child: Text( 'Login Information', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
                  )
                  ),
                ),
              ),

            ],
          ),
        ),
      );

  }
}
