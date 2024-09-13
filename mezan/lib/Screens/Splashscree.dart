import 'package:flutter/material.dart';
import 'package:mezan/Screens/loginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5) ,(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black,
    body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/mizan.png"),
          const CircularProgressIndicator(color: Colors.white,),
        ],
      ),
    );
  }
}