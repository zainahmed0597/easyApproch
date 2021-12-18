import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maaz_class/service/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:()=> MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.blue,
            textTheme: GoogleFonts.nunitoTextTheme(
              Theme.of(context).textTheme,
            )),
        // home:  const LoginScreen(),
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,

        debugShowCheckedModeBanner: false,
      ),designSize: const Size(360, 640),
    );
  }
}
