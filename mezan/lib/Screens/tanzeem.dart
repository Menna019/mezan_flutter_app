import 'package:flutter/material.dart';
import 'package:mezan/Cache/CacheHelper.dart';
import 'package:mezan/colors.dart';

class TanzeemScreen extends StatefulWidget {
  const TanzeemScreen({super.key});

  @override
  State<TanzeemScreen> createState() => _TanzeemScreenState();
}

class _TanzeemScreenState extends State<TanzeemScreen> {
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20, right: 20),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/logo (2).png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20),
                  child: Container(
                    height: 150,
                    width: 270,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 15, right: 10),
                      child: Text(
                        "هنا يتم عرض أفضل نسبة لتنظيم المصروفات من خلال مرتبك.",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "ReadexPro-VariableFont_HEXP,wght.ttf"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40,),
            Container(
             width: 200, height: 100,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black,),
              ),
              child: Center(
                child: Text("${CacheHelper.getData(key: "monthlyearn")}",
                style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 50,),

           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
             child: Row(
               children: [
                 Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 50),
                       child: Container(
                        
                        width: 220, height: 360,
                        decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black,),
                       ),
                        child: const Stack(
                          children: [
                             Padding(
                               padding: EdgeInsets.only(top: 10,right: 36),
                               child: CircleAvatar(
                               radius: 60,
                               backgroundColor: Color.fromARGB(133, 76, 175, 79),
                               child: Text("50.1%",
                               style: TextStyle(fontSize:20,color: Colors.black ),),
                               ),
                             ),
                            Padding(
                            padding: EdgeInsets.only(top: 160,right: 10),
                            child: CircleAvatar(
                            radius: 17,
                            backgroundImage: AssetImage("assets/l1.png"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 162,right: 50),
                            child: Text("فواتير المياه و الكهرباء",
                            style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                          SizedBox(height: 16,),
                          Padding(
                            padding: EdgeInsets.only(top: 200,right: 10),
                            child: CircleAvatar(
                              radius: 17,
                              backgroundImage: AssetImage("assets/l2.png"),
                              ),
                          ),
                          
                          Padding(
                            padding: EdgeInsets.only(top: 200,right: 55),
                            child: Text("مصاريف التعليم",
                            style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                 
                           SizedBox(height: 16,),
                          Padding(
                            padding: EdgeInsets.only(top: 240,right: 10),
                            child: CircleAvatar(
                              radius: 17,
                              backgroundImage: AssetImage("assets/l3.png"),
                              ),
                          ),
                          
                          Padding(
                            padding: EdgeInsets.only(top: 240,right: 55),
                            child: Text("الرعاية الصحية",
                            style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                 
                          Padding(
                            padding: EdgeInsets.only(top: 280,right: 10),
                            child: CircleAvatar(
                              radius: 17,
                              backgroundImage: AssetImage("assets/l4.png"),
                              ),
                          ),
                          
                          Padding(
                            padding: EdgeInsets.only(top: 280,right: 55),
                            child: Text("وسائل النقل ",
                            style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                          
                          ],
                          
                        ),
                        
                       ),
                     ),
                     
                   ],
                 ),

                  Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 50),
                       child: Container(
                        width: 220, height: 360,
                        decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black,),
                       ),
                        child: const Stack(
                          children: [
                             Padding(
                               padding: EdgeInsets.only(top: 10,right: 44),
                               child: CircleAvatar(
                               radius: 60,
                               backgroundColor: Color.fromARGB(133, 76, 175, 79),
                               child: Text("24.95%",
                               style: TextStyle(fontSize:20,color: Colors.black ),),
                               ),
                             ),
                            Padding(
                            padding: EdgeInsets.only(top: 160,right: 10),
                            child: CircleAvatar(
                            radius: 17,
                            backgroundImage: AssetImage("assets/l6.png"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 162,right: 50),
                            child: Text("الرحلات",
                            style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                          SizedBox(height: 16,),
                          Padding(
                            padding: EdgeInsets.only(top: 200,right: 10),
                            child: CircleAvatar(
                              radius: 17,
                              backgroundImage: AssetImage("assets/l5.png"),
                              ),
                          ),
                          
                          Padding(
                            padding: EdgeInsets.only(top: 200,right: 55),
                            child: Text("التسوق",
                            style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                 
                           SizedBox(height: 16,),
                          Padding(
                            padding: EdgeInsets.only(top: 240,right: 10),
                            child: CircleAvatar(
                              radius: 17,
                              backgroundImage: AssetImage("assets/l8.png"),
                              ),
                          ),
                          
                          Padding(
                            padding: EdgeInsets.only(top: 240,right: 55),
                            child: Text("الهدايا",
                            style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                          ],
                        ),
                       ),
                     ),
                   ],
                 ),
                 
                   Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 50),
                       child: Container(
                        width: 220, height: 360,
                        decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black,),
                       ),
                        child: const Stack(
                          children: [
                             Padding(
                               padding: EdgeInsets.only(top: 10,right: 45),
                               child: CircleAvatar(
                               radius: 60,
                               backgroundColor: Color.fromARGB(133, 76, 175, 79),
                               child: Text("24.95%",
                               style: TextStyle(fontSize:20,color: Colors.black ),),
                               ),
                             ),
                            Padding(
                            padding: EdgeInsets.only(top: 160,right: 10),
                            child: CircleAvatar(
                            radius: 17,
                            backgroundImage: AssetImage("assets/l10.png"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 162,right: 50),
                            child: Text("حالات الطوارئ",
                            style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                          SizedBox(height: 16,),
                          Padding(
                            padding: EdgeInsets.only(top: 200,right: 10),
                            child: CircleAvatar(
                              radius: 17,
                              backgroundImage: AssetImage("assets/l10.png"),
                              ),
                          ),
                          
                          Padding(
                            padding: EdgeInsets.only(top: 200,right: 55),
                            child: Text("تعجيل سداد الديون",
                            style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                                    
                           SizedBox(height: 16,),
                          Padding(
                            padding: EdgeInsets.only(top: 240,right: 10),
                            child: CircleAvatar(
                              radius: 17,
                              backgroundImage: AssetImage("assets/l9.png"),
                              ),
                          ),
                          
                          Padding(
                            padding: EdgeInsets.only(top: 240,right: 55),
                            child: Text("المدخرات",
                            style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                          ],
                        ),
                       ),
                     ),
                   ],
                                    ),
               ],
             ),
           ),
            
          ],
        ),
      ),
    );
  }
}