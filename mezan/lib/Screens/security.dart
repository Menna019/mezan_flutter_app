import 'package:flutter/material.dart';
import 'package:mezan/Cache/CacheHelper.dart';
import 'package:mezan/colors.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 67, 133, 127),
        title: const Text(
          "ميزان",
          style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontFamily: "Lemonada-VariableFont_wght.ttf"),
        ),
      ),
      backgroundColor: kGreen,
      body:  
      Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Container(
        width: double.infinity, height: 560,
        decoration: BoxDecoration(
        color:  const Color.fromARGB(255, 67, 133, 127),
        borderRadius: BorderRadius.circular(20),
        ),
      child:  Stack(
       alignment: Alignment.topCenter,
       clipBehavior: Clip.none,
        children: [
        const Positioned(
        top: -80,
          child: CircleAvatar(
          radius: 100,
          backgroundColor:Color.fromARGB(255, 67, 133, 127)  ,
          ),
        ),
        const Positioned(
          top:  -60,
          child: CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage("assets/slogan.gif"),
          ),
        ),
        Padding(
        padding: const EdgeInsets.only(top: 120),
        child: Text("${CacheHelper.getData(key: "name")}",
        style: const TextStyle(fontSize: 35,color: Colors.white),),
        ),

        Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Text("${CacheHelper.getData(key: "email")}",
        style: const TextStyle(fontSize: 35,color: Colors.white),),
        ),

       Row(
      children: [
        Column(
          children: [
             Padding(
               padding: const EdgeInsets.only(top: 330,),
               child: Container(
                 width: 140,height:80,
                 decoration: BoxDecoration(
                 color: const Color.fromARGB(255, 37, 79, 79),
                 borderRadius: BorderRadius.circular(20),
                 ),
                 child: const Center(
                   child:  Text("الراتب الشهري",
                   style: TextStyle(fontSize: 20,color: Colors.white),),
                 ),
               ),
             ),
            Padding(
        padding: const EdgeInsets.only(top: 0,right: 0),
        child: Text("${CacheHelper.getData(key: "monthlyearn")}",
        style: const TextStyle(fontSize: 35,color: Colors.white),),
        ),
          ],
        ),
     const SizedBox( width: 131,),
        Column(
          children: [
             Padding(
               padding: const EdgeInsets.only(top: 330,),
               child: Container(
                 width: 140,height:80,
                 decoration: BoxDecoration(
                 color: const Color.fromARGB(255, 37, 79, 79),
                 borderRadius: BorderRadius.circular(20),
                 ),
                 child: const Center(
                   child:  Text("الحساب البنكي",
                   style: TextStyle(fontSize: 20,color: Colors.white),),
                 ),
               ),
             ),
            Padding(
        padding: const EdgeInsets.only(top: 0,right: 0),
        child: Text("${CacheHelper.getData(key: "bank")}",
        style: const TextStyle(fontSize: 35,color: Colors.white),),
        ),
          ],
        ),
      ],
       )
        ],
        ),
        ),
      )
     
    );
  }
}