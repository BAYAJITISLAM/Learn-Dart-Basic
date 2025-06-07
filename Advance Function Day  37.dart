import 'dart:math';

//Gadget Accessories Order

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
  print("\nGrocery Inventory & Sales Tracker");
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
          if (inv['name'] == itemname) {
            dynamic singleItemPrice = itemQuantity * inv['price'];
            inv['stock'] -= itemQuantity;

            customerOrders[customerName]!.add({
              "item": inv['name'],
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
      Grandtotalprice += price;
      totalPrice += price;
      print("$name x $quantity = $price");
    }

    print("Total Price $totalPrice");
  }

  print("\n  Final Stock");

  for (var item in inventory) {
    String itemName = item['name'];
    dynamic itemStock = item['stock'];
    print("$itemName : $itemStock");
  }

  print("\nGrand Total Price $Grandtotalprice");
}

//Online Course Progress Tracker
List<Map<String, dynamic>> coursesOnline = [
  {"course": "Flutter Basics", "totalLessons": 20},
  {"course": "Web Development", "totalLessons": 25},
  {"course": "UI/UX Design", "totalLessons": 15},
];

List<Map<String, dynamic>> studentsOnline = [
  {"name": "Alice", "course": "Flutter Basics", "completed": 18},
  {"name": "Bob", "course": "Web Development", "completed": 16},
  {"name": "Charlie", "course": "UI/UX Design", "completed": 15},
];
void trackCourseProgress(
  List<Map<String, dynamic>> coursesOnline,
  List<Map<String, dynamic>> studentsOnline,
) {
  print("\nOnline Course Progress Tracker");
  int readyForCertificate = 0;

  for (var so in studentsOnline) {
    String studentName = so["name"];
    dynamic selectedCourse = so['course'];
    dynamic completedLesson = so['completed'];

    for (var co in coursesOnline) {
      String courseName = co['course'];
      dynamic totalLesson = co['totalLessons'];

      if (selectedCourse == courseName) {
        print("\n👩‍🎓 Student: $studentName");
        print("📘 Course: $courseName");

        double completion = (completedLesson / totalLesson) * 100;
        print(
          "✅ Completed: $completedLesson / $totalLesson (${completion.toStringAsFixed(1)}%)",
        );

        if (completion >= 80) {
          print("✅ Ready for Certificate");
          readyForCertificate++;
        } else {
          print("⏳ In Progress");
        }
      }
    }
  }

  print("\n🎓 Total Ready for Certificate:$readyForCertificate");
}

//Event Management System (with Guest Tracker)
List<Map<String, dynamic>> events = [
  {
    "event": "Flutter Workshop",
    "capacity": 3,
    "guests": ["Alice", "Bob", "Charlie"],
  },
  {
    "event": "UI/UX Bootcamp",
    "capacity": 4,
    "guests": ["David", "Bayajit Islam"],
  },
  {
    "event": "Web Dev Seminar",
    "capacity": 2,
    "guests": ["Eva", "Frank"],
  },
];
void trackEventGuests(List<Map<String, dynamic>> events) {
  print("\nEvent Management System (with Guest Tracker)");
  int tRg = 0;

  for (var event in events) {
    String eventName = event['event'];
    int eventCapacity = event['capacity'];
    List<String> eventquests = event['guests'];
    print("\n📋 Event:$eventName");
    print(
      "👥 Registered (${eventquests.length} / $eventCapacity) : ${eventquests.join(",")} ",
    );
    tRg += eventquests.length;

    if (eventquests.length == eventCapacity) {
      print("✅ Status: Fully Booked");
    } else {
      print("🟡 Status: Open for Registration");
    }
  }
  print("\n🎯 Total Registered Guests: $tRg");
}

//Freelancer Project & Payment Tracker
List<Map<String, dynamic>> freelancers = [
  {
    "name": "Alice",
    "projects": [
      {"title": "Landing Page", "payment": 300, "status": "Completed"},
      {"title": "Portfolio Website", "payment": 500, "status": "Ongoing"},
    ],
  },
  {
    "name": "Bob",
    "projects": [
      {"title": "Shopify Store", "payment": 400, "status": "Completed"},
      {"title": "SEO Fixes", "payment": 200, "status": "Completed"},
    ],
  },
  {
    "name": "Charlie",
    "projects": [
      {"title": "Logo Design", "payment": 100, "status": "Ongoing"},
    ],
  },
];
void trackFreelancerProjects(List<Map<String, dynamic>> freelancers) {
  print("\nFreelancer Project & Payment Tracker>");
  dynamic grandTotal = 0;

  for (var freelancer in freelancers) {
    String name = freelancer['name'];
    dynamic projectDe = freelancer['projects'];
    print("\n👨‍💻 Freelancer: $name");
    int howManyProjects = 0;
    dynamic totalEarn = 0;
    bool status = false;

    for (var project in projectDe) {
      dynamic projectPrice = project['payment'];
      String projectStatus = project['status'];
      howManyProjects++;
      totalEarn += projectPrice;

      if (projectStatus == "Ongoing") {
        status = true;
      } else {
        status = false;
      }
    }

    grandTotal += totalEarn;
    print("📁 Projects:$howManyProjects");
    print("💰 Total Earned:$totalEarn");
    print("🕒 Ongoing Projects: ${status ? "Yes" : "No"}");
  }

  print("\n🔢 Total Paid to Freelancers: $grandTotal");
}

// Library Book Borrow Tracker
List<Map<String, dynamic>> libraryBooks = [
  {"title": "Flutter 101", "author": "Mark", "copies": 3},
  {"title": "Dart Mastery", "author": "John", "copies": 2},
  {"title": "UI Design", "author": "Lisa", "copies": 1},
];

Map<String, List<String>> studentBorrows = {
  "Alice": ["Flutter 101", "Dart Mastery"],
  "Bob": ["Flutter 101"],
  "Charlie": ["UI Design", "Flutter 101"],
};
void libraryBookBorrowTracker(
  List<Map<String, dynamic>> libraryBooks,
  Map<String, List<String>> studentBorrows,
) {
  print("\n 📚 Library Borrow Report");
  print("\n");
  dynamic totalBorrrow = 0;

  for (var student in studentBorrows.entries) {
    String studentName = student.key;
    List<String> studentBookBorrowList = student.value;
    print("👩‍🎓 $studentName borrowed ${studentBookBorrowList.length} books.");

    for (var library in libraryBooks) {
      String bookName = library['title'];

      if (studentBookBorrowList.contains(bookName)) {
        library['copies']--;
        totalBorrrow++;
      }
    }
  }
  print("\n📘 Available Books:");

  for (var library in libraryBooks) {
    String bookName = library['title'];
    dynamic bookLeft = library['copies'];
    if (bookLeft > 0) {
      print("- $bookName ($bookLeft Copies Left)");
    }
  }
  print("\n📦 Total Books Borrowed:$totalBorrrow");
}

//Online Shopping Order Tracker
List<Map<String, dynamic>> products = [
  {"name": "Keyboard", "price": 1500, "stock": 5},
  {"name": "Mouse", "price": 800, "stock": 3},
  {"name": "Monitor", "price": 10000, "stock": 2},
];

List<Map<String, dynamic>> orders = [
  {"customer": "Alice", "product": "Keyboard", "quantity": 2},
  {"customer": "Bob", "product": "Monitor", "quantity": 1},
  {
    "customer": "Charlie",
    "product": "Mouse",
    "quantity": 4,
  }, // Not enough stock
  {"customer": "David", "product": "Keyboard", "quantity": 1},
];

void OnlineShoppingOrderTracker(
  List<Map<String, dynamic>> products,
  List<Map<String, dynamic>> orders,
) {
  print("\nOnline Shopping Order Tracker");
  int succesfullOrder = 0;
  int faildOrder = 0;

  for (Map<String, dynamic> order in orders) {
    String customerName = order['customer'];
    String productName = order['product'];
    dynamic productQunatity = order['quantity'];

    for (Map<String, dynamic> product in products) {
      String prodName = product['name'];
      dynamic productPrice = product['price'];
      dynamic productStrock = product['stock'];

      if (productName == prodName) {
        if (productStrock < productQunatity) {
          print(
            "❌ $customerName's order for $productName (x$productQunatity) failed due to insufficient stock- Stock Availabe $productStrock ",
          );
          faildOrder++;
        } else {
          print(
            "✅ $customerName ordered $productName (x$productQunatity) - Total: ${productPrice * productQunatity} Taka",
          );
          succesfullOrder++;
          product['stock'] -= productQunatity;
        }
      }
    }
  }
  print("\n📦 Remaining Stock:");

  for (var product in products) {
    print("-  ${product['name']}: ${product['stock']}");
  }

  print("\n📊 Order Summary:");
  print("✅ Successful Orders:$succesfullOrder");
  print("❌ Failed Orders:$faildOrder");
}

//Monthly Budget & Expense Analyzer
List<Map<String, dynamic>> users = [
  {"name": "Alice", "income": 50000},
  {"name": "Bob", "income": 40000},
  {"name": "Charlie", "income": 30000},
];

Map<String, Map<String, int>> userExpenses = {
  "Alice": {
    "Rent": 20000,
    "Groceries": 8000,
    "Transport": 3000,
    "Others": 4000,
  },
  "Bob": {"Rent": 15000, "Groceries": 7000, "Entertainment": 5000},
  "Charlie": {"Groceries": 6000, "Transport": 4000, "Others": 3000},
};
void MonthlyBudgetExpenseAnalyzer(
  List<Map<String, dynamic>> users,
  Map<String, Map<String, int>> userExpenses,
) {
  print("\nMonthly Budget & Expense Analyzer");
  dynamic combineExpenses = 0;
  String topSaver = '';
  int maxSaving = 0;

  Map<String, dynamic> categoryTotals = {};

  for (var userExp in userExpenses.entries) {
    String userName = userExp.key;
    Map<String, dynamic> expenses = userExp.value;
    dynamic totalExpenses = 0;
    String mostExpCat = '';
    dynamic mostExpAmount = 0;

    print("\n👤 $userName");

    var mostExpensesCatagory = expenses.entries
        .cast<MapEntry<String, int>>()
        .reduce((a, b) => (a.value as num) > (b.value as num) ? a : b);

    for (var exp in expenses.entries) {
      String catogoryName = exp.key;
      dynamic catogotyExpenses = exp.value;
      totalExpenses += catogotyExpenses;
      combineExpenses += catogotyExpenses;

      if (catogotyExpenses > mostExpAmount) {
        mostExpAmount = catogotyExpenses;
        mostExpCat = catogoryName;
      }
      if (categoryTotals.containsKey(catogoryName)) {
        categoryTotals[catogoryName] =
            categoryTotals[catogoryName]! + catogotyExpenses;
      } else {
        categoryTotals[catogoryName] = catogotyExpenses;
      }
    }
    dynamic saving;

    for (var user in users) {
      String name = user['name'];
      dynamic income = user['income'];
      if (name == userName) {
        print("💰 Income :$income");
        saving = income - totalExpenses;
      }
    }
    if (saving > maxSaving) {
      maxSaving = saving;
      topSaver = userName;
    }
    print(mostExpCat);
    print("💸 Total Expenses $totalExpenses");
    print("💵 Savings:$saving");
    print(
      "🏷️ Most Expensive Category:${mostExpensesCatagory.key} (${mostExpensesCatagory.value})",
    );
  }

  String topCategory = '';
  dynamic topCategoryAmount = 0;
  for (var entry in categoryTotals.entries) {
    if (entry.value > topCategoryAmount) {
      topCategory = entry.key;
      topCategoryAmount = entry.value;
    }
  }
  print("\n👑 Highest Saver: $topSaver ($maxSaving)");
  print("📊 Total Combined Expenses:$combineExpenses");
  print(
    "🏆 Highest Spending Category Overall: $topCategory ($topCategoryAmount)",
  );
}

// even or odd detector
int numberevenorodd = 8;

void isEven(int numberevenorodd) {
  print("\nEven Or Odd Checker");
  if (numberevenorodd / 2 == 0) {
    print("$numberevenorodd  Even Number");
  } else {
    print("$numberevenorodd Odd Number");
  }
}

//String Reverser
String reversText(String textString) {
  String revers = textString.split(' ').reversed.join();
  return revers;
}

// Student Grade Summary

List<Map<String, dynamic>> studentsGrade = [
  {"name": "Rafi", "score": 85},
  {"name": "Nila", "score": 72},
  {"name": "Kamal", "score": 90},
  {"name": "Sumi", "score": 64},
];
void studentGradeSummary(List<Map<String, dynamic>> studentsGrade) {
  print("\nStudent Grade Summary");
  dynamic totalClassScore = 0;

  for (Map<String, dynamic> students in studentsGrade) {
    String name = students['name'];
    dynamic score = students['score'];
    totalClassScore += score;

    if (score >= 80) {
      print("$name Score $score  Grade A");
    } else if (score >= 70) {
      print("$name Score $score Grade B");
    } else {
      print("$name Score $score Grade C");
    }
  }
  double avarageClassScore = (totalClassScore / studentsGrade.length);
  print("\nClass Average:$avarageClassScore");
}

// Daily Expense Tracker
List<int> expenses = [300, 1200, 450, 700, 50];

void analyzeExpenses(List<int> expenses) {
  int totalExpensee = 0;

  for (var exp in expenses) {
    totalExpensee += exp;
  }
  int highest = expenses.reduce((a, b) => a > b ? a : b);
  int lowest = expenses.reduce((a, b) => a < b ? a : b);

  print("\nTotal $totalExpensee");
  print("Highest Expense: $highest");
  print("Lowest Expense :$lowest");
}

//Restaurant Menu Order
Map<String, int> menu = {"Burger": 120, "Pizza": 300, "Fries": 90};

List<Map<String, dynamic>> resturentOrders = [
  {
    "customer": "Anik",
    "items": ["Burger", "Fries"],
  },
  {
    "customer": "Rina",
    "items": ["Pizza"],
  },
];

void restaurantMenuOrder(List<Map<String, dynamic>> resturentOrders) {
  for (Map<String, dynamic> order in resturentOrders) {
    String name = order['customer'];
    List<String> items = List<String>.from(order['items']);
    dynamic totalprice = 0;

    List<String> orderitem = [];

    for (var item in items) {
      if (menu.containsKey(item)) {
        totalprice += menu[item];
        orderitem.add(item);
      }
    }
    print("$name Orderd : ${orderitem} - Total $totalprice");
  }
}

//Smart Online Store with Offers, Stock System & Invoice Generator
List<Map<String, dynamic>> smartProducts = [
  {"name": "Keyboard", "price": 1500, "stock": 5},
  {"name": "Mouse", "price": 800, "stock": 3},
  {"name": "Monitor", "price": 10000, "stock": 2},
];

List<Map<String, dynamic>> smartOrders = [
  {
    "customer": "Anik",
    "items": [
      {"name": "Keyboard", "quantity": 2},
      {"name": "Mouse", "quantity": 1},
    ],
  },
  {
    "customer": "Rina",
    "items": [
      {"name": "Monitor", "quantity": 1},
    ],
  },
];

void processOrders(
  List<Map<String, dynamic>> smartProducts,
  List<Map<String, dynamic>> smartOrders,
) {
  print("\nSmart Online Store with Offers, Stock System & Invoice Generator");

  for (var orders in smartOrders) {
    String customerName = orders['customer'];
    dynamic items = orders['items'];
    dynamic subtotal = 0;
    print("\n🧾 Invoice for $customerName");

    for (var item in items) {
      String itemName = item['name'];
      dynamic itemQuantity = item['quantity'];

      for (var product in smartProducts) {
        if (product['name'] == itemName) {
          dynamic totaleachproduct = product['price'] * itemQuantity;
          subtotal += totaleachproduct;
          print("- ${product['name']} x$itemQuantity = $totaleachproduct");
          product['stock'] -= itemQuantity;
        }
      }
    }

    print("Subtotal: $subtotal");
    if (subtotal >= 3000) {
      dynamic discount = subtotal * (2 / 100);
      print("Discount Applied  : $discount  (2%)");
      print("Total After Discount : ${subtotal - discount} Taka");
    }
  }
  print("\n📦 Remaining Stock:");

  for (var product in smartProducts) {
    print("-  ${product['name']}: ${product['stock']}");
  }
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
  trackCourseProgress(coursesOnline, studentsOnline);
  trackEventGuests(events);
  trackFreelancerProjects(freelancers);
  libraryBookBorrowTracker(libraryBooks, studentBorrows);
  OnlineShoppingOrderTracker(products, orders);
  MonthlyBudgetExpenseAnalyzer(users, userExpenses);
  isEven(numberevenorodd);
  print(reversText("\nHello World"));
  studentGradeSummary(studentsGrade);
  analyzeExpenses(expenses);
  restaurantMenuOrder(resturentOrders);
  processOrders(smartProducts, smartOrders);
}
