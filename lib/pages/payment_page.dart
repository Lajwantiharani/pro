import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:pro/pages/Delivery_progress_Page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final FocusNode cvvFocusNode = FocusNode();

  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  @override
  void initState() {
    super.initState();
    cvvFocusNode.addListener(() {
      setState(() {
        isCvvFocused = cvvFocusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    cvvFocusNode.dispose();
    super.dispose();
  }

  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Confirm Payment'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Card Number: $cardNumber"),
                Text("Expiry Date: $expiryDate"),
                Text("Card Holder Name: $cardHolderName"),
                Text("CVV: $cvvCode"),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DeliveryProgressPage(),
                  ),
                );
              },
              child: const Text("Yes"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.onBackground,
        title: const Text('Checkout'),
      ),
      body: SingleChildScrollView(
        // Wrap the Column in SingleChildScrollView
        child: Form(
          key: formKey,
          child: Column(
            children: [
              CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused,
                onCreditCardWidgetChange: (data) {},
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Card Number',
                      ),
                      initialValue: cardNumber,
                      onChanged: (value) => setState(() => cardNumber = value),
                      keyboardType: TextInputType.number,
                      validator: (value) =>
                          value!.isEmpty ? 'Please enter card number' : null,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Expiry Date',
                      ),
                      initialValue: expiryDate,
                      onChanged: (value) => setState(() => expiryDate = value),
                      keyboardType: TextInputType.datetime,
                      validator: (value) =>
                          value!.isEmpty ? 'Please enter expiry date' : null,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Card Holder Name',
                      ),
                      initialValue: cardHolderName,
                      onChanged: (value) =>
                          setState(() => cardHolderName = value),
                      validator: (value) => value!.isEmpty
                          ? 'Please enter card holder name'
                          : null,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'CVV',
                      ),
                      focusNode: cvvFocusNode,
                      initialValue: cvvCode,
                      onChanged: (value) => setState(() => cvvCode = value),
                      keyboardType: TextInputType.number,
                      obscureText: true,
                      validator: (value) =>
                          value!.isEmpty ? 'Please enter CVV' : null,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: userTappedPay,
                child: const Text('Pay now'),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
