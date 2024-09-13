// ignore: file_names
import 'package:flutter/material.dart';
import 'package:mezan/Cache/CacheHelper.dart';
import 'package:mezan/Screens/homescreen.dart';
import 'package:mezan/colors.dart';
import 'package:mezan/constant.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isSelected = false;
  bool isSelected2 = false;
  String ? selectedCountry;
  GlobalKey key = GlobalKey();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController monthlyearn = TextEditingController();
  TextEditingController bank = TextEditingController();
  bool _obscureText = true;
  bool _obscureText2 = true;
  dynamic isEmpty = true;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  backgroundColor: kWhite,
  appBar: AppBar(
  backgroundColor: kWhite,
  title: Text(
  "ميزان",
  style: TextStyle(
  fontSize: 30,
  color: kBlack,
  fontFamily: "ReadexPro-VariableFont_HEXP,wght.ttf",
  ),
  ),
  centerTitle: true,
  ),

  body: SingleChildScrollView(
  child: Column(
  mainAxisSize: MainAxisSize.min,
  children: [
  Container(
  alignment: Alignment.topCenter,
  height: 230,
  decoration: const BoxDecoration(
  image: DecorationImage(
  alignment: Alignment.topCenter,
  image: AssetImage("assets/login.gif"),
  ),
  ),
  ),

  Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  child: Column(
  children: [
  TextFormField(
  controller: name,
  decoration: InputDecoration(
  labelText: "الاسم الكامل",
  hintText: "ادخل اسمك",
  labelStyle: TextStyle(
  fontSize: 26,
  fontWeight: FontWeight.bold,
  fontFamily: "Gulzar-Regular.ttf",
  color: kBlack,
  ),
  border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(40),
  ),
  ),
  ),
  const SizedBox(height: 27),
  TextFormField(
  controller: email,
  decoration: InputDecoration(
  labelText: "البريد الإلكتروني",
  hintText: "ادخل بريدك الإلكتروني",
  labelStyle: TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  fontFamily: "Gulzar-Regular.ttf",
  color: kBlack,
  ),
  border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(40),
  ),
  ),
  ),

  const SizedBox(height: 27),
  TextFormField(
  obscuringCharacter: '*',
  obscureText: _obscureText,
  controller: monthlyearn,
  decoration: InputDecoration(
  suffixIcon:  IconButton(onPressed: (){
  setState(() {
  isSelected = !isSelected; 
  _obscureText =! _obscureText;
  });
  },
  icon: isSelected? const Icon(Icons.visibility,size: 25,):
  const Icon(Icons.visibility_off,size: 25,)),
  labelText: "الدخل الشهري",
  hintText: "ادخل دخلك الشهري ",
  labelStyle: TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  fontFamily: "Gulzar-Regular.ttf",
  color: kBlack,
  ),
  border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(40),
  ),
  ),
  ),

  const SizedBox(height: 27),
  TextFormField(
  obscureText: _obscureText2,
  obscuringCharacter: "*",
  controller: bank,
  decoration: InputDecoration(
  suffixIcon:  IconButton(onPressed: (){
  setState(() {
  isSelected2 = !isSelected2; 
  _obscureText2 =! _obscureText2;
  });
  },
  icon: isSelected2? const Icon(Icons.visibility,size: 25,):
  const Icon(Icons.visibility_off,size: 25,)),
  labelText: "الرصيد في البنك",
  hintText: "ادخل رصيدك في البنك",
  labelStyle: TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  fontFamily: "Gulzar-Regular.ttf",
  color: kBlack,
  ),
  border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(40),
  ),
  ),
  ),
 
    Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: selectedCountry,
                    hint: const Text('اختر دولتك',
                    style: TextStyle(
                    fontFamily: "Lemonada-VariableFont_wght.ttf",color: Colors.black
                    ),),
                    onChanged: (newValue) {
                      setState(() {
                        selectedCountry = newValue;
                      });
                    },
                    items: items1.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.yellow[100], 
                      border: const OutlineInputBorder(),
                    ),
                    icon: const Icon(Icons.arrow_drop_down),
                  ),
                ),
              ],
            ),

  ],
  ),
  ),
  const SizedBox(height: 45,),
  ElevatedButton(onPressed: (){
   CacheHelper.saveData(key: "name", value: name.text);
   CacheHelper.saveData(key: "monthlyearn", value: monthlyearn.text);
   CacheHelper.saveData(key: "email", value: email.text);
   CacheHelper.saveData(key: "bank", value: bank.text);
  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }, 
  style: ElevatedButton.styleFrom(
  backgroundColor: const Color.fromARGB(173, 132, 227, 136),
  ),
  child: Text("تسجيل دخول",
  style: TextStyle(fontSize: 26,color: kBlack,
  fontFamily: "ReemKufi-VariableFont_wght.ttf",
  ),
  ),
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
