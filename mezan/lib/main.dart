// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mezan/Cache/CacheHelper.dart';
import 'package:mezan/Screens/Splashscree.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
 await CacheHelper.initial(); 
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
      locale:  Locale('ar'), // Set Arabic as the default locale
      supportedLocales:  [
        Locale('ar', ''), // Only Arabic supported
      ],
      localizationsDelegates:  [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: SplashScreen(),
    );
  }
}