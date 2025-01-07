import 'package:flutter/material.dart';
import 'package:stripe/Services/stripe_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Stripe Payment"),
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                StripeService.instance.makePayment();
              },
              color: Colors.grey.shade400,
              child: const Text("Purchase"),
            ),
          ],
        ),
      ),
    );
  }
}
