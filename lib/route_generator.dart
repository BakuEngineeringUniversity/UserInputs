import 'package:flutter/material.dart';
import 'package:input_examples/button_page.dart';
import 'package:input_examples/main.dart';
import 'package:input_examples/radio_page.dart';
import 'package:input_examples/text_page.dart';
import 'package:input_examples/checkbox_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/button':
        return MaterialPageRoute(builder: (_) => ButtonExample());
      case '/text':
        return MaterialPageRoute(builder: (_) => const TextFieldExample());
      case '/checkbox':
        return MaterialPageRoute(builder: (_) => const CheckBoxExample());
      case '/radio':
        return MaterialPageRoute(builder: (_) => RadioButtonExample());
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
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
}
