import 'package:flutter/material.dart';
import 'package:mezan/colors.dart';
import 'package:mezan/constant.dart';

class DollarTahweelScreen extends StatefulWidget {
  const DollarTahweelScreen({super.key});

  @override
  State<DollarTahweelScreen> createState() => _DollarTahweelScreenState();
}

class _DollarTahweelScreenState extends State<DollarTahweelScreen> {
  String ? selectedMoney;
  bool isSelceted = false;
  bool isSelceted2 = false;
  TextEditingController amountController = TextEditingController();
  String convertedAmount = '';

   double convertCurrency(String currency, double amount) {
    if ( moneyFelow.containsKey(currency)) {
      return amount / moneyFelow[currency]!;
    } else {
      return 0.0;
    }
  }
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
                    height: 100,
                    width: 270,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 15, right: 10),
                      child: Text(
                        "هنا يمكنك تحويل العملات إلى قيمتها الدولارية.",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "ReadexPro-VariableFont_HEXP,wght.ttf"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
             Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: selectedMoney,
                    hint: const Text('اختر العمله المراد تحويلها',
                    style: TextStyle(
                    fontFamily: "Lemonada-VariableFont_wght.ttf",color: Colors.black
                    ),),
                    onChanged: (newValue) {
                      setState(() {
                        selectedMoney = newValue;
                      });
                    },
                    items: moneyFelow.keys.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor:  Color.fromARGB(255, 176, 240, 178), // Custom background color
                      border:  OutlineInputBorder(),
                    ),
                    icon: const Icon(Icons.arrow_drop_down),
                  ),
                ),
              ],
            ),

  ],
  ),
  ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: TextField(
                controller: amountController,
                decoration: InputDecoration(
                  labelText: "المبلغ المطلوب تحويله",
                  labelStyle: const TextStyle(color: Colors.black),
                  hintText: "ادخل المبلغ",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isSelceted =!isSelceted;
                  isSelceted2 =!isSelceted2;
                  if (selectedMoney != null) {
                    double amount =
                        double.tryParse(amountController.text) ?? 0;
                    double result =
                        convertCurrency(selectedMoney!, amount);
                    convertedAmount =
                        "Converted Amount: \$${result.toStringAsFixed(2)}";
                  } else {
                    convertedAmount = "اختر العملة المراد تحويلها";
                  }
                });
              },
              child: Text(
                "تحويل",
                style: TextStyle(fontSize: 30, 
                color:isSelceted2?Colors.black : Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: isSelceted
                    ? Colors.blue.shade200
                    : const Color.fromARGB(255, 61, 111, 61),
                shadowColor: Colors.black,
                side: const BorderSide(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Container(
              width: 350, height: 170,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black,),
              ),
              child: Center(child: Text(convertedAmount,
              style: const  TextStyle(fontSize: 23,fontWeight: FontWeight.bold),)
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
