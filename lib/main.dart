import 'package:flutter/material.dart';
import 'package:training_class_1/login.dart';

void main() {
  runApp(const App());
}
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:LoginScreen()
    );
  }
}
