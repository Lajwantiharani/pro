import 'package:flutter/material.dart';
import 'package:pro/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

  List<Tab> _buildCategoryTabs(BuildContext context) {
    return FoodCategory.values.map((category) {
      // Display category name with capitalization and spaces if necessary
      final categoryName =
          category.name[0].toUpperCase() + category.name.substring(1);
      return Tab(
        child: Text(
          categoryName,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width < 360
                ? 12
                : 22, // Responsive font size
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.05), // Responsive horizontal padding
      child: TabBar(
        controller: tabController,
        isScrollable: true, // Makes the TabBar scrollable on smaller screens
        tabs: _buildCategoryTabs(context),
        indicatorColor: Colors.blueAccent, // Custom indicator color
        indicatorWeight: 3, // Thicker indicator for better visibility on mobile
      ),
    );
  }
}
