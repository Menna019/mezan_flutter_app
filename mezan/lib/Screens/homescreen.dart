import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:mezan/Cache/CacheHelper.dart';
import 'package:mezan/Screens/dollartahweel.dart';
import 'package:mezan/Screens/eqsaat.dart';
import 'package:mezan/Screens/security.dart';
import 'package:mezan/Screens/tanzeem.dart';
import 'package:mezan/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
    backgroundColor: Color.fromARGB(255, 67, 133, 127),
    title: const Text("ميزان",
    style: TextStyle(fontSize: 30,color: Colors.white,
    fontFamily: "Lemonada-VariableFont_wght.ttf"),
    ),
    ),
    backgroundColor: kGreen,
    body:  SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Row(
          children: [
          const Padding(
            padding:  EdgeInsets.only(top: 20,right: 20),
            child: CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage("assets/logo (2).png"),
            ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 20,right: 30),
             child: Container(
             height: 80, width: 230,
             decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(20)
             ),
             child:  Padding(
               padding:  const EdgeInsets.only(top: 15),
               child: Text("  أهلًا بك! يا ${CacheHelper.getData(key: "name")}",
               style: const TextStyle(fontSize: 26,
               fontFamily: "ReadexPro-VariableFont_HEXP,wght.ttf"),
              ),
             ),
             ),
           ),
          ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Container(
            width: double.infinity,height: 150,
            decoration: BoxDecoration(
            color: const Color.fromARGB(255, 90, 138, 130),
            image: const DecorationImage(
            alignment: Alignment.centerLeft,
            image: AssetImage("assets/dolar.png")),
            borderRadius: BorderRadius.circular(30),
            ),
            child:  Padding(
              padding:  const EdgeInsets.only(bottom: 10,left: 120),
               child: TextButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(
               builder: (context) => const DollarTahweelScreen()));
               }, 
               child: const Text("حساب تحويل العملات إلى الدولار",
               style: TextStyle(fontSize: 23,
               color: Colors.white,
               fontFamily: "Handjet-VariableFont_ELGR,ELSH,wght.ttf"),
               ),
               ),
            ),
            ),
          ),
      
        Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 90, 138, 130),
        borderRadius: BorderRadius.circular(30),
      ),
      
      child:  Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 10),
            child: TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
            builder: (context) => const EqsaatScreen()));
            }, 
            child:  const Text("عرض الأقساط و مواعيدها" ,
             style: TextStyle(
               fontSize: 23,
                color: Colors.white,
                fontFamily: "Handjet-VariableFont_ELGR,ELSH,wght.ttf",
               ),
               ),
          ),
          ),
         const  Positioned(
            top: 10,
            left: 10, 
            child: CircleAvatar(
              radius: 65, 
              backgroundImage: AssetImage('assets/aqsat-removebg-preview.png'), 
            ),
          ),
        ],
      ),
        ),
      ),
         
          Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 90, 138, 130),
        borderRadius: BorderRadius.circular(30),
      ),
      
      child:  Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50, right: 10),
            child: TextButton(onPressed: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => const TanzeemScreen()));
            }, 
            child: const Text("تنظيم المصروفات بالنسبة لدخلك الشهري",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: "Handjet-VariableFont_ELGR,ELSH,wght.ttf",
              ),
              ),
              ),
          ),
      
          Positioned(
            top: 10,
            left: 10, 
            child: CircleAvatar(
              radius: 65, 
              backgroundImage: AssetImage('assets/masrouf.png'), 
            ),
          ),
        ],
      ),
        ),
      ),
      
   
         
          Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 90, 138, 130),
        borderRadius: BorderRadius.circular(30),
      ),
      
      child:  Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 10),
            child: TextButton(onPressed: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => const SecurityScreen()));
            }, 
            child: const Text(
              "البيانات الشخصية ",
              style: TextStyle(
                fontSize: 27,
                color: Colors.white,
                fontFamily: "Handjet-VariableFont_ELGR,ELSH,wght.ttf",
              ),
            ),
            ),
          ),
      
          const Positioned(
            top: 10,
            left: 10, 
            child: CircleAvatar(
              radius: 65, 
              backgroundImage: AssetImage('assets/data.jpg'), 
            ),
          ),
        ],
      ),
        ),
      ),
        ],
        ),
    ),
);
  }
}