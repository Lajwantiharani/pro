import 'package:flutter/material.dart';

class MyDrawerTile extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback? onTap;


  const MyDrawerTile({
     Key? key,
  required this.text,
  required this.icon,
  required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),

      child: ListTile(title: Text(
        text,
        style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
      
      ),
      leading: Icon(icon,color: Theme.of(context).colorScheme.inversePrimary),
      onTap: onTap,
      
      ),
    );
  }
}