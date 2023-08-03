import 'package:flutter/material.dart';
import 'package:training_class_1/ApiService.dart';
import 'package:training_class_1/AppResponse.dart';
import 'package:training_class_1/home.dart';
import 'package:training_class_1/util.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  // String name = "Kamrul";
  // String pass = "1234";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Kamrul"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    width: 200,
                    child: Text(
                      'Login Information',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: usernameController,
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
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  child: Text(
                    'Log in ',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () async {
                    if (usernameController.text.isNotEmpty &&
                        passwordController.text.isNotEmpty) {
                      Util.userName = usernameController.text;
                      Util.userPassword = passwordController.text;

                      //Login Request
                      AppResponse? response = await ApiService.login(
                          Util.userName, Util.userPassword);

                      var snackBar = SnackBar(
                          content: Text(response!.msg!));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);


                      // Response is Success full
                      if (response!.code == 200)
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => homeScreen()));
                        return;
                      }
                    } else {
                      var snackBar = SnackBar(
                          content: Text('Enter username and password'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have account? '),
                  Padding(
                    padding: const EdgeInsets.only(left: 1.0),
                    child: InkWell(
                        onTap: () {
                          print('hello');
                        },
                        child: Text(
                          'Create an account.',
                          style: TextStyle(fontSize: 14, color: Colors.blue),
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
