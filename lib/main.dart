import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe/consts.dart';
import 'package:stripe/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _setup();
  runApp(const MyApp());
}

Future<void> _setup() async {
  Stripe.publishableKey = stripePublishableKey;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
