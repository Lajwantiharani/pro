import 'package:flutter/material.dart';
import 'package:pro/models/food.dart';
import 'package:pro/pages/cart_page.dart';

class Restaurant extends ChangeNotifier {
  // List of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic Cheeseburger",
      description: "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.jpg",
      price: 9.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Bacon Burger",
      description: "A tasty burger with crispy bacon, cheddar cheese, and BBQ sauce.",
      imagePath: "lib/images/burgers/beef_burger.jpg",
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Bacon", price: 1.50),
        Addon(name: "Fried Egg", price: 1.00),
      ],
    ),
    Food(
      name: "Double Beef Burger",
      description: "Two beef patties with double the cheese and pickles.",
      imagePath: "lib/images/burgers/chick_burger.jpg",
      price: 12.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Patty", price: 3.00),
        Addon(name: "Onion Rings", price: 1.50),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description: "A healthy option with a grilled veggie patty, lettuce, tomato, and avocado.",
      imagePath: "lib/images/burgers/vege_burger.jpg",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Avocado", price: 1.50),
        Addon(name: "Hummus", price: 1.00),
      ],
    ),
    Food(
      name: "Spicy Chicken Burger",
      description: "Crispy chicken fillet with spicy mayo and jalapeños.",
      imagePath: "lib/images/burgers/fries_burger.jpg",
      price: 9.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Spicy Sauce", price: 0.99),
        Addon(name: "Cheese", price: 1.00),
      ],
    ),

    // salads
    Food(
      name: "Caesar Salad",
      description: "Crisp romaine lettuce with Caesar dressing, croutons, and parmesan.",
      imagePath: "lib/images/salads/caesar_salad.jpg",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Chicken", price: 2.00),
        Addon(name: "Bacon", price: 1.50),
      ],
    ),
    Food(
      name: "Greek Salad",
      description: "Fresh cucumber, tomatoes, feta cheese, olives, and onions.",
      imagePath: "lib/images/salads/fruit_salad.jpg",
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Feta", price: 1.00),
        Addon(name: "Grilled Chicken", price: 2.00),
      ],
    ),
    Food(
      name: "Garden Salad",
      description: "Mixed greens with cucumber, carrots, and tomatoes.",
      imagePath: "lib/images/salads/greek_salad.jpg",
      price: 5.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 1.50),
        Addon(name: "Balsamic Dressing", price: 0.99),
      ],
    ),
    Food(
      name: "Cobb Salad",
      description: "Grilled chicken, bacon, avocado, eggs, and blue cheese.",
      imagePath: "lib/images/salads/russain_salad.jpg",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Chicken", price: 2.50),
        Addon(name: "Boiled Egg", price: 1.00),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description: "A mix of quinoa, fresh veggies, and feta cheese.",
      imagePath: "lib/images/salads/southwest_salad.jpg",
      price: 8.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 2.50),
        Addon(name: "Extra Quinoa", price: 1.00),
      ],
    ),

    // sides
    Food(
      name: "Fries",
      description: "Golden crispy fries.",
      imagePath: "lib/images/sides/loadedfries.jpg",
      price: 2.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese", price: 0.99),
        Addon(name: "Chili", price: 1.50),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Crispy battered onion rings.",
      imagePath: "lib/images/sides/onion_rings.jpg",
      price: 3.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Spicy Mayo", price: 0.99),
      ],
    ),
    Food(
      name: "Mozzarella Sticks",
      description: "Fried mozzarella sticks with marinara dipping sauce.",
      imagePath: "lib/images/sides/mac_side.jpg",
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Marinara", price: 0.99),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description: "Crispy sweet potato fries with a hint of sea salt.",
      imagePath: "lib/images/sides/sweet_potato_side.jpg",
      price: 3.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Honey Mustard", price: 0.99),
      ],
    ),
    Food(
      name: "Coleslaw",
      description: "Creamy coleslaw made with fresh cabbage and carrots.",
      imagePath: "lib/images/sides/garlic_bread_side.jpg",
      price: 2.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Dressing", price: 0.50),
      ],
    ),

    // desserts
    Food(
      name: "Chocolate Cake",
      description: "Rich and moist chocolate cake with a creamy frosting.",
      imagePath: "lib/images/desserts/chocolate_desserts.jpg",
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 0.99),
      ],
    ),
    Food(
      name: "Cheesecake",
      description: "Classic cheesecake with a graham cracker crust.",
      imagePath: "lib/images/desserts/cupcake_desserts.jpg",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Sauce", price: 0.99),
      ],
    ),
    Food(
      name: "Brownie",
      description: "A fudgy chocolate brownie topped with walnuts.",
      imagePath: "lib/images/desserts/delish_desserts.jpg",
      price: 3.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Ice Cream", price: 1.50),
      ],
    ),
    Food(
      name: "Ice Cream Sundae",
      description: "Vanilla ice cream with chocolate syrup and whipped cream.",
      imagePath: "lib/images/desserts/fab_desserts.jpg",
      price: 3.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Sprinkles", price: 0.50),
      ],
    ),
    Food(
      name: "Apple Pie",
      description: "A warm slice of apple pie with a cinnamon crust.",
      imagePath: "lib/images/desserts/macron_desserts.jpg",
      price: 4.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Ice Cream", price: 1.50),
      ],
    ),

    // drinks
    Food(
      name: "Berry",
      description: "Chilled can of Berry.",
      imagePath: "lib/images/drinks/berry_drink.jpg",
      price: 1.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Lemon Slice", price: 0.50),
      ],
    ),
    Food(
      name: "choco",
      description: "Freshly squeezed choco.",
      imagePath: "lib/images/drinks/choco_drink.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
    Food(
      name: "Peach",
      description: "peach drink with sweetness.",
      imagePath: "lib/images/drinks/peach_drink.jpg",
      price: 3.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Shot", price: 1.00),
      ],
    ),
    Food(
      name: "Straw shake",
      description: "Creamy Straw available in chocolate, vanilla, or strawberry.",
      imagePath: "lib/images/drinks/straw_drink.jpg",
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 0.99),
        Addon(name: "Sprinkles", price: 0.50),
      ],
    ),
    Food(
      name: "Vanilla",
      description: "Refreshing lemonade made with fresh lemons.",
      imagePath: "lib/images/drinks/vanila_drink.jpg",
      price: 2.49,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
  ];

  // Getter for the food menu
  List<Food> get menu => _menu;
}



 final List<CartItem> _cart =[];

void addToCart(Food food,List<Addon> selectedAddons){
  CartItem? cartItem =_cart.firstWhereOrNull((item){

bool isSameFood =item.food ==food;



bool isSameAddons =ListEquality().equals(items.selectedAddons);
return isSameFood && isSameAddons;
 } );
 
 
 
 
 if(cartItem !=null){
  cartItem.quantity++;


 }
 else{
  _cart.add(CartItem(food: food,selectedAddons: selectedAddons,
  
  ),
  
  ) ;
 }

notifyListeners();
 } 

void removeFromCart(CartItem cartItem){
  int cartIndex = cart.indexOf(cartItem);
}
if (cartIndex !=  -1){
  if(_cart(cartIndex).quantity >1){
    _cart(cartIndex).quantity--;
  }else{
    _cart.removeAt(cartIndex);
  }
}
notifyListeners();
}

double getTotalPrice(){
  double total =0.0;
  for(CartItem  cartItem in _cart) {
    double itemTotal =cart.food.price;
    for (Addon addon in cartItem.selectedAddons){
      itemTotal +=addon.price;
    }
    total+= itemTotal * cartItem.quantity;
  }
  return total;
}
int getTotalItemCount()
{
  int totalItemCount =0;
   for (CartItem cartItem in _cart){
    totalItemCount += cartItem.quantity;

   }
   return totalItemCount;
}
void clearCart(){
  _cart.clear();
  notifyListeners();

}

}



























































































































