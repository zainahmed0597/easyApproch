import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maaz_class/screens/Login_Register_Screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:()=> MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primaryColor: Colors.blue,
            textTheme: GoogleFonts.nunitoTextTheme(
              Theme.of(context).textTheme,
            )),
        home:  const LoginScreen(),

        debugShowCheckedModeBanner: false,
      ),designSize: const Size(360, 640),
    );
  }
}
