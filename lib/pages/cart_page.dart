import 'package:flutter/material.dart';
import 'package:pro/components/my_button.dart';
import 'package:pro/components/my_cart_tile.dart';
import 'package:pro/models/restaurant.dart';
import 'package:provider/provider.dart';
import 'payment_page.dart'; // Import the PaymentPage

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      final userCart = restaurant.cart; // Accessing the cart correctly

      return Scaffold(
        appBar: AppBar(
          title: const Text("Cart"),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title:
                        const Text("Are you sure you want to clear the cart?"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Close the dialog
                        },
                        child: const Text("Cancel"),
                      ),
                      TextButton(
                        onPressed: () {
                          restaurant.clearCart(); // Clear the cart
                          Navigator.of(context).pop(); // Close the dialog
                        },
                        child: const Text("Clear"),
                      ),
                    ],
                  ),
                );
              },
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
        body: Column(
          children: [
            // Check if the cart is empty
            Expanded(
              child: userCart.isEmpty
                  ? const Center(child: Text("Cart is Empty"))
                  : ListView.builder(
                      itemCount: userCart.length,
                      itemBuilder: (context, index) {
                        final cartItem = userCart[index];
                        return MyCartTile(cartItem: cartItem);
                      },
                    ),
            ),
            const SizedBox(height: 25), // Space above the button
            MyButton(
              text: "Go to Checkout",
              onTap: () {
                // Navigate to PaymentPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PaymentPage()),
                );
              },
            ),
          ],
        ),
      );
    });
  }
}
