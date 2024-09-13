import 'package:flutter/material.dart';

class ScreenSize {
  static late double width;
  static late double height;

  static void intial(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }
}

const kPrimaryColor = Color(0xFFFEF3E2);
const kPrimaryColor2 = Color(0xFFBEC6A0);
const kPrimaryColor3 = Color(0xFF708871);
const kPrimaryColor4 = Color(0xFF606676);
const kfontStyle1 = "Handjet";
const kfontStyle2 = "Lemonada";
const kfontStyle3 = "ReadexPro";
const kfontStyle4 = "ReemKufi";
const kfontStyle5 = "Gulzar";
List<String> items1 = [
  'مصر',
  'السعودية',
  'الامارات',
  'البحرين',
  'الكويت',
  'قطر',
  'تونس',
  'سوريا',
  'الجزائر',
  'فلسطين',
  'عُمان',
  'السعودية',
  'لبنان',
  'ليبيا',
  'موريتانيا',
  'العراق',
  'العراق',
  'الصومال',
  'جيبوتى',
  'جزر القمر',
  'القمر',
];

List<String> items = [
  'Egypt (EGP)',
  'Saudi Arabia (SAR)',
  'UAE (AED)',
  'Bahrain (BHD)',
  'Kuwait (KWD)',
  'Qatar (QAR)',
  'Tunisia (TND)',
  'Syria (SYP)',
  'Algeria (DZD)',
  'Palestine (ILS)',
  'Oman (OMR)',
  'Sudan (SDG)',
  'Lebanon (LBP)',
  'Libya (LYD)',
  'Mauritania (MRU)',
  'Iraq (IQD)',
  'Jordan (JOD)',
  'Somalia (SOS)',
  'Djibouti (DJF)',
  'Comoros (KMF)',
  'Morocco (MAD)',
  'Germany (EUR)',
  'Japan (JPY)',
  'England (GBP)',
  'Switzerland (CHF)',
  'Australia (AUD)',
];

Map<String, double> moneyFelow = {
  'Egypt (EGP)': 48.44,
  'Saudi Arabia (SAR)': 3.75,
  'UAE (AED)': 3.67,
  'Bahrain (BHD)': 0.3770,
  'Kuwait (KWD)': 0.31,
  'Qatar (QAR)': 3.65,
  'Tunisia (TND)': 3.04,
  'Syria (SYP)': 14750,
  'Algeria (DZD)': 132.50,
  'Palestine (ILS)': 3.65,
  'Oman (OMR)': 0.39,
  'Sudan (SDG)': 601.50,
  'Lebanon (LBP)': 89500.00,
  'Libya (LYD)': 4.76,
  'Mauritania (MRU)': 39.73,
  'Iraq (IQD)': 1310.00,
  'Jordan (JOD)': 0.71,
  'Somalia (SOS)': 571,
  'Djibouti (DJF)': 177.94,
  'Comoros (KMF)': 443.55,
  'Morocco (MAD)': 9.72,
  'Germany (EUR)': 0.89,
  'Japan (JPY)': 143.28,
  'England (GBP)': 1.4847,
  'Switzerland (CHF)': 0.8435,
  'Australia (AUD)': 1.48,
};