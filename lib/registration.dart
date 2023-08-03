import 'package:flutter/material.dart';

class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  _registrationState createState() => _registrationState();
}

class _registrationState extends State<registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Kamrul"),
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
                      child: Text( 'Registration Information', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                      )
                  ),
                ),
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'FUll Name',
                      hintText: 'Enter Full Name as kamrul..'),
                ),
              ),
              Padding(

                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone number, email or username',
                      hintText: 'Enter valid email id as abc@gmail.com'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(

                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                ),
              ),

              SizedBox(
                height: 65,
                width: 360,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                      child: Text( 'Submit ', style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: (){
                        print('Successfully log in ');
                      },

                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 50,
              ),
              Container(
                  child: Center(
                    child: Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 62),
                          child: Text('Already have an account? '),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left:1.0),
                          child: InkWell(
                              onTap: (){
                                print('hello');
                              },
                              child: Text('Login.', style: TextStyle(fontSize: 14, color: Colors.blue),)),
                        )
                      ],
                    ),
                  )
              )
            ],
          ),
        ),
      );

  }
}
