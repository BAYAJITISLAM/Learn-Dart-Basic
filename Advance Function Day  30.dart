//Gadget Accessories Order
List<Map<String, dynamic>> accessories = [
  {"name": "mouse", "price": 500},
  {"name": "keyboard", "price": 1000},
  {"name": "headset", "price": 1500},
  {"name": "charger", "price": 800},
];
List<String> selectedItems = ["mouse", "headset", "charger"];
void gadget(
  List<Map<String, dynamic>> accessories,
  List<String> selectedItems,
) {
  Map<String, dynamic> AllProductSelect = {};
  int count = 1;

  for (var acc in accessories) {
    String name = acc['name'];
    dynamic price = acc['price'];
    if (selectedItems.contains(name)) {
      AllProductSelect['item${count}_name'] = name;
      AllProductSelect['item${count}_price'] = price;
      count++;
    }
  }
  print('\nSelected Item');
  dynamic totalPrice = 0;
  for (int i = 1; i < count; i++) {
    dynamic productName = AllProductSelect['item${i}_name'];
    dynamic productPrice = AllProductSelect['item${i}_price'];
    print("- $productName $productPrice");
    totalPrice += productPrice;
  }
  print("Total Price $totalPrice");
}

void main() {
  gadget(accessories, selectedItems);
}
