import 'package:flutter/material.dart';
import 'package:maaz_class/screens/Login_Register_Screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/register':
        // Validation of correct data type
        // if (args is String) {
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(
              // data: args,
              ),
        );
      case '/forgetPassword':
        return MaterialPageRoute(builder: (_) =>
        const ForgetPasswordScreen()
        );
    }
    // If args is not of the correct type, return an error page.
    // You can also throw an exception while in development.
    return _errorRoute();
    // default:
    // If there is no such named route in the switch statement, e.g. /third
    return _errorRoute();
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: const Center(
        child: Text('ERROR'),
      ),
    );
  });
}
