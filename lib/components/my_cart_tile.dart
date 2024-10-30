import 'package:flutter/material.dart';
import 'package:pro/components/my_quantity_selector.dart';
import 'package:pro/models/cart_item.dart';
import 'package:pro/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      cartItem.food.imagePath,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cartItem.food.name),
                      Text(
                        '\$${cartItem.food.price.toString()}',
                        style: TextStyle(color: Theme.of(context).colorScheme.primary), // Corrected placement of TextStyle
                      ),
                      const SizedBox(height :10),
                    ],

                  ),
                  const Spacer(),
                  const SizedBox(width: 10),
                  
                ],
              ),
            ),
            SizedBox(
              height: cartItem.selectedAddons.isEmpty ? 0 : 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
                children: cartItem.selectedAddons.map((addon) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: FilterChip(
                      label: Row(
                        children: [
                          Text(addon.name),
                          const SizedBox(width: 5), // Optional spacing between name and price
                          Text('(\$${addon.price.toString()})'), // Corrected string interpolation
                        ],
                      ),
                      shadowColor: Theme.of(context).colorScheme.primary,
                      shape: StadiumBorder(
                        side: BorderSide(color: Theme.of(context).colorScheme.primary),
                      ),
                      selected: false, // Change this based on your logic
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      selectedColor: Theme.of(context).colorScheme.inversePrimary,
                      labelStyle: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary, // You can customize this
                        fontSize: 12, // Corrected font size
                      ),
                      onSelected: (value) {
                        // Handle selection logic here
                      },
                    ),
                  );
                }).toList(), // Ensure to convert the Iterable to a List
              ),
            ),
          ],
        ),
      ),
    );
  }
}
