//Gadget Accessories Order

import 'dart:io';

List<Map<String, dynamic>> accessories = [
  {"name": "mouse", "price": 500},
  {"name": "keyboard", "price": 1000},
  {"name": "headset", "price": 1500},
  {"name": "charger", "price": 800},
];
List<String> selectedItemsGadget = ["mouse", "headset", "charger"];

void gadget(
  List<Map<String, dynamic>> accessories,
  List<String> selectedItemsGadget,
) {
  Map<String, dynamic> AllProductSelect = {};
  int count = 1;

  for (var acc in accessories) {
    String name = acc['name'];
    dynamic price = acc['price'];
    if (selectedItemsGadget.contains(name)) {
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

//Food Order Summary
List<Map<String, dynamic>> foodItems = [
  {"name": "Burger", "price": 150},
  {"name": "Pizza", "price": 300},
  {"name": "Fries", "price": 80},
  {"name": "Chicken Wings", "price": 200},
];

List<String> selectedFoods = ["Burger", "Fries"];

void foodOrderSummary(
  List<Map<String, dynamic>> foodItem,
  List<String> SelectedFoods,
) {
  Map<String, dynamic> SelectedItemsFoods = {};
  int count = 1;
  dynamic totalPrice = 0;

  for (var food in foodItem) {
    var foodName = food['name'];
    var foodPrice = food['price'];

    if (selectedFoods.contains(foodName)) {
      SelectedItemsFoods['item${count}name'] = foodName;
      SelectedItemsFoods['item${count}price'] = foodPrice;
      count++;
    }
  }
  print("\nFood Order Summary");
  for (var ii = 1; ii < count; ii++) {
    if (SelectedItemsFoods.containsKey("item${ii}name")) {
      dynamic price = SelectedItemsFoods['item${ii}price'];
      print(
        "Selected  Item ${SelectedItemsFoods['item${ii}name']} ${SelectedItemsFoods["item${ii}price"]}",
      );
      totalPrice += price;
    }
  }
  print("Total $totalPrice");
}

//Movie Ticket Booking
List<Map<String, dynamic>> timeSlots = [
  {"name": "Morning Show", "price": 200},
  {"name": "Evening Show", "price": 300},
];

List<Map<String, dynamic>> vipServices = [
  {"name": "VIP Seat", "price": 100},
  {"name": "Snack Combo", "price": 50},
];

String selectedSlot = "Evening Show";
String selectedVip = "";

void movieTicketBoking01(
  List<Map<String, dynamic>> timeSlots,
  List<Map<String, dynamic>> vipServices,
) {
  Map<String, dynamic> SelectedServicesAndTime = {};

  for (var time in timeSlots) {
    var timeName = time['name'];
    var timePrice = time['price'];
    if (timeName == selectedSlot) {
      SelectedServicesAndTime['slot_name'] = timeName;
      SelectedServicesAndTime['slot_price'] = timePrice;
    }
  }
  for (var vips in vipServices) {
    var vipName = vips['name'];
    var VipPrice = vips['price'];
    if (selectedVip == vipName) {
      SelectedServicesAndTime['vipName'] = vipName;
      SelectedServicesAndTime['vipPrice'] = VipPrice;
    }
  }

  print("\nMovie Ticket Booking");
  dynamic totalPriceTicket = 0;

  if (SelectedServicesAndTime.containsKey("slot_name")) {
    print(
      "Select Slot : ${SelectedServicesAndTime['slot_name']}  ${SelectedServicesAndTime['slot_price']} Taka",
    );
    totalPriceTicket += SelectedServicesAndTime['slot_price'];
  }
  if ((SelectedServicesAndTime.containsKey("vipName"))) {
    print(
      "Include :  ${SelectedServicesAndTime['vipName']} ${SelectedServicesAndTime['vipPrice']} Taka",
    );
    totalPriceTicket += SelectedServicesAndTime['vipPrice'];
  } else {
    print("Include : None");
  }
  print("Total Price $totalPriceTicket Taka");
}

//Online Course Enrollment
List<Map<String, dynamic>> courses = [
  {"name": "Web Development", "price": 5000},
  {"name": "App Development", "price": 6000},
  {"name": "Graphics Design", "price": 4000},
  {"name": "Digital Marketing", "price": 3500},
];

List<String> selectedCourses = ["Web Development", "Graphics Design"];

void onlineCourseEnrollment(List<Map<String, dynamic>> courses) {
  Map<String, dynamic> SelectedEnrollment = {};
  int count = 1;

  for (var course in courses) {
    var courseName = course['name'];
    var coursePrice = course['price'];
    if (selectedCourses.contains(courseName)) {
      SelectedEnrollment['item_${count}_name'] = courseName;
      SelectedEnrollment['item_${count}_price'] = coursePrice;
      count++;
    }
  }
  print("\nOnline Course Enrollment");
  dynamic totalPrice = 0;

  for (int i = 1; i < count; i++) {
    var SelectProductName = SelectedEnrollment['item_${i}_name'];
    var SelectProductPrice = SelectedEnrollment['item_${i}_price'];
    print("Enroll : $SelectProductName $SelectProductPrice Taka");
    totalPrice += SelectProductPrice;
  }
  print("Total Price : $totalPrice");
}

//Restaurant Multi-Customer Bill Summary
List<Map<String, dynamic>> foodItemsMc = [
  {"name": "Burger", "price": 150},
  {"name": "Pizza", "price": 300},
  {"name": "Fries", "price": 80},
  {"name": "Chicken Wings", "price": 200},
  {"name": "Coke", "price": 50},
];

Map<String, List<String>> customerOrdersMc = {
  "Alice": ["Burger", "Coke"],
  "Bob": ["Pizza", "Fries", "Coke"],
  "Charlie": ["Chicken Wings", "Fries"],
};
void generateRestaurantBillSummary(
  List<Map<String, dynamic>> foodItemsMc,
  Map<String, List<String>> customerOrdersMc,
) {
  Map<String, List<Map<String, dynamic>>> foodItems = {};

  for (var customer in customerOrdersMc.entries) {
    String customerName = customer.key;
    List<String> customerOrder = customer.value;

    foodItems[customerName] = [];

    for (var food in foodItemsMc) {
      String foodName = food['name'];
      dynamic foodPrice = food['price'];
      if (customerOrder.contains(foodName)) {
        foodItems[customerName]!.add({"name": foodName, "price": foodPrice});
      }
    }
  }
  print("\nRestaurant Multi-Customer Bill Summary");
  dynamic grandTotal = 0;

  for (var food in foodItems.entries) {
    String customerName = food.key;
    dynamic customerOrder = food.value;
    print("🧾 Customer Name : $customerName");
    dynamic totalprice = 0;
    for (var order in customerOrder) {
      print("${order['name']} - ${order["price"]} Taka");
      totalprice += order['price'];
    }
    print("Total : $totalprice");
    grandTotal += totalprice;
  }
  print("Grand Total From All  Customers : $grandTotal");
}

//Employee Work Report & Salary Calculator
List<Map<String, dynamic>> employees = [
  {"name": "John", "rate": 100},
  {"name": "Alice", "rate": 120},
  {"name": "Bob", "rate": 90},
];

Map<String, List<int>> workedHours = {
  "John": [8, 8, 8, 8, 6, 0, 0],
  "Alice": [9, 9, 9, 9, 8, 4, 0],
  "Bob": [7, 7, 7, 7, 5, 2, 0],
};
void generateSalaryReport(
  List<Map<String, dynamic>> employees,
  Map<String, List<int>> workedHours,
) {
  print("\nEmployee Work Report & Salary Calculator");
  int grandTotal = 0;
  for (var work in workedHours.entries) {
    String employeName = work.key;
    List<int> employeHour = work.value;
    for (var employe in employees) {
      String name = employe['name'];
      dynamic rate = employe['rate'];
      if (name == employeName) {
        print("\n👨‍💼 Employee : $name");
        print("Daily Hours  :  $employeHour");
        dynamic totalHours = 0;
        for (int i = 0; i < employeHour.length; i++) {
          totalHours += employeHour[i];
        }
        print("Total Hours : $totalHours");
        int totalSalary = totalHours * rate;
        print("Total Salary : $totalSalary");
        grandTotal += totalSalary;
      }
    }
  }
  print("\n💰 Grand Total Paid by Company: $grandTotal");
}

//Student Exam Result Analyzer
List<Map<String, dynamic>> students = [
  {
    "name": "Alice",
    "marks": [45, 60, 70],
  },
  {
    "name": "Bob",
    "marks": [30, 50, 65],
  },
  {
    "name": "Charlie",
    "marks": [55, 35, 30],
  },
];
void analyzeStudentResults(List<Map<String, dynamic>> students) {
  print("\nStudent Exam Result Analyzer");
  int totalPassStudent = 0;
  for (var std in students) {
    String name = std['name'];
    List<int> marks = std['marks'];
    double average = 0;
    int countFail = 0;
    for (int i = 0; i < marks.length; i++) {
      average += marks[i] / marks.length;
      if (marks[i] < 40) {
        countFail++;
      } else {}
    }

    if (countFail == 0) {
      print("\n🎓 Student: $name");
      print("Marks: $marks");
      print("${average.toStringAsFixed(2)}");
      print("Result :✅ Pass ");
      totalPassStudent++;
    } else {
      print("\n🎓 Student: $name");
      print("Marks: $marks");
      print("${average.toStringAsFixed(2)}");
      print("Result :❌ Fail");
    }
  }
  print("\n 🎉 Total Passed Students: $totalPassStudent");
}

//Grocery Inventory & Sales Tracker
List<Map<String, dynamic>> inventory = [
  {"name": "Rice", "price": 60, "stock": 100},
  {"name": "Oil", "price": 150, "stock": 50},
  {"name": "Sugar", "price": 80, "stock": 70},
  {"name": "Salt", "price": 30, "stock": 40},
];

Map<String, List<Map<String, int>>> customerPurchases = {
  "Alice": [
    {"Rice": 5},
    {"Oil": 2},
  ],
  "Bob": [
    {"Sugar": 3},
    {"Salt": 2},
    {"Rice": 2},
  ],
  "Charlie": [
    {"Oil": 1},
    {"Sugar": 5},
  ],
};
void processGrocerySales(
  List<Map<String, dynamic>> inventory,
  Map<String, List<Map<String, int>>> customerPurchases,
) {
  Map<String, List<Map<String, dynamic>>> customerOrders = {};

  for (var cs in customerPurchases.entries) {
    String customerName = cs.key;
    List<Map<String, int>> customerSelectedProduct = cs.value;
    customerOrders[customerName] = [];

    for (var csp in customerSelectedProduct) {
      csp.forEach((key, value) {
        String itemname = key;
        int itemQuantity = value;

        for (var inv in inventory) {
          dynamic inventoryItemName = inv['name'];
          int inventoryItemPrice = inv["price"];
          int inventoryItemStock = inv["stock"];

          if (inventoryItemName == itemname) {
            dynamic singleItemPrice = itemQuantity * inventoryItemPrice;
            
            customerOrders[customerName]!.add({
              "item": inventoryItemName,
              "price": singleItemPrice,
              "quantity": itemQuantity,
             
            });
          }
        }
      });
    }
  }
  print("\n Grocery Inventory & Sales Tracker");

  dynamic Grandtotalprice = 0;

  for (var customerO in customerOrders.entries) {
    print("\n🧾 Customer:${customerO.key}");
    List<Map<String, dynamic>> productD = customerO.value;
    dynamic totalPrice = 0;
    for (var prod in productD) {
      String name = prod['item'];
      dynamic price = prod['price'];
      dynamic quantity = prod['quantity'];
      dynamic stock = prod['stock'];
      Grandtotalprice += price;
      totalPrice += price;
      print("$name x $quantity = $price");
    }
    print("Total Price $totalPrice");
  }
  print("\nGrand Total Price $Grandtotalprice");
}

void main() {
  gadget(accessories, selectedItemsGadget);
  foodOrderSummary(foodItems, selectedFoods);
  movieTicketBoking01(timeSlots, vipServices);
  onlineCourseEnrollment(courses);
  generateRestaurantBillSummary(foodItemsMc, customerOrdersMc);
  generateSalaryReport(employees, workedHours);
  analyzeStudentResults(students);
  processGrocerySales(inventory, customerPurchases);
}
