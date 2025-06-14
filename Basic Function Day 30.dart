dynamic studentanalyzeStudentPerformance(
  String studentName,
  List<Map<String, dynamic>> marks,
) {
  dynamic highMarks = marks[0]["mark"];
  String highDayMarks = marks[0]["day"];
  dynamic lowMarks = marks[0]['mark'];
  String lowDayMarks = marks[0]['day'];

  dynamic totalNumber = 0;

  dynamic studyAlert = 0;
  dynamic previusNumber = marks[0]["mark"];

  for (var mark in marks) {
    dynamic number = mark['mark'];
    dynamic day = mark['day'];
    totalNumber += number;

    if (highMarks < mark["mark"]) {
      highMarks = mark['mark'];
      highDayMarks = day;
    }
    if (lowMarks > mark["mark"]) {
      lowMarks = mark['mark'];
      lowDayMarks = day;
    }
    if (previusNumber > number) {
      studyAlert++;
      if (studyAlert == 3) {
        print("⚠️ Study Alert for $studentName");
      }
    } else {
      studyAlert = 0;
    }

    previusNumber = number;
  }
  double avareage = (totalNumber / marks.length);

  print("📌 Student:$studentName");
  print("✅ Highest Mark: $highMarks on $highDayMarks ");
  print("🔻 Lowest Mark: $lowMarks on $lowDayMarks");
  print("🧮 Total Marks: $totalNumber");
  print("📊 Average:${avareage.toStringAsFixed(2)}");

  if (avareage < 60.00) {
    print("❌ Fail");
  } else if (avareage >= 80.00) {
    print("✅ Excellent");
  }
}

//Sum Of 2 Number

int sumOfNumber(int fristNumber, int secandNumber) {
  return fristNumber + secandNumber;
}

//Find Even or Odd

int evenOrOdd(int yourEvenOrOddNumber) {
  return yourEvenOrOddNumber % 2;
}

//Factorial of a Number

int factorialOfNumber(int inputFactorialNumber) {
  int result = 1;

  for (int i = 1; i <= inputFactorialNumber; i++) {
    result *= i;
  }
  return result;
}

//Palindrome Checker

String palindromeChecker(String inputpalidromeNumber) {
  String reversed = inputpalidromeNumber.split("").reversed.join();

  if (inputpalidromeNumber == reversed) {
    return "  This Numbe $inputpalidromeNumber is Palindrome";
  } else {
    return "This Number $inputpalidromeNumber  Not Palindrome Reverse Number  $reversed";
  }
}

//Prime Number Check

String primeNumberChecker(String inputPrime) {
  int inputPrimeInt = int.parse(inputPrime);
  List<int> primeNumber = [];

  for (int number = 2; primeNumber.length < inputPrimeInt; number++) {
    bool isPrime = true;

    for (int i = 2; i < number; i++) {
      if (number % i == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      primeNumber.add(number);
    }
  }

  return "First $inputPrime  Prime Number : $primeNumber";
}

//grocery Budget Tracker

void groceryBudgetTracker(List<Map<String, dynamic>> items, int budget) {
  dynamic remainingBalance = budget;
  dynamic totalSpent = 0;
  for (var item in items) {
    dynamic itemName = item["item"];
    dynamic itemPrice = item["price"];

    if (remainingBalance >= itemPrice) {
      print("-$itemName : $itemPrice Taka");
      remainingBalance -= itemPrice;
      totalSpent += itemPrice;
    }
  }
  print("Total Spent : $totalSpent");
  print("Remaining  : $remainingBalance");
}

// even odd and sum

void evenOddSum(List<int> number) {
  int evenSum = 0;
  int oddSum = 0;
  for (var num in number) {
    if (num % 2 == 0) {
      evenSum += num;
    } else {
      oddSum += num;
    }
  }

  print('Even Number Sum = $evenSum');
  print('Odd Number Sum = $oddSum');
}

void studentsMarks(List<Map<String, dynamic>> StudentMark) {
  for (var std in StudentMark) {
    dynamic studentName = std["name"];
    dynamic studentMark = std["mark"];

    if (studentMark > 50) {
      print("Student Name  : $studentName  Mark  $studentMark");
    }
  }
}

Map<String, dynamic> pcBuild(
  String inputCpuName,
  List<Map<String, dynamic>> mustSelectProcessor,
  String inputRamName,
  List<Map<String, dynamic>> mustSelectRam,
) {
  Map<String, dynamic> allProduct = {};

  for (var cpu in mustSelectProcessor) {
    if (cpu["name"] == inputCpuName) {
      allProduct['cpu_name'] = cpu["name"];
      allProduct["cpu_price"] = cpu["price"];
    }
  }
  for (var ram in mustSelectRam) {
    if (ram["name"] == inputRamName) {
      allProduct['ram_name'] = ram["name"];
      allProduct["ram_price"] = ram["price"];
    }
  }
  return allProduct;
}

dynamic sumofmap(Map<String, dynamic> allProductList) {
  dynamic totalprice = 0;
  for (var m in allProductList.entries) {
    if (m.key.contains("price")) {
      totalprice += m.value;
    }
  }
  return totalprice;
}

Map<String, dynamic> groceryTracker(
  List<Map<String, dynamic>> SelectProductType,
  String item1,
  String item2,
) {
  Map<String, dynamic> selectedProductGrocery = {};

  for (var product in SelectProductType) {
    if (product['name'] == item1) {
      selectedProductGrocery['item1_Name'] = product['name'];
      selectedProductGrocery['item1_price'] = product['price'];
    }
    if (product['name'] == item2) {
      selectedProductGrocery['item2_Name'] = product['name'];
      selectedProductGrocery['item2_price'] = product['price'];
    }
  }
  return selectedProductGrocery;
}

dynamic totalGroceryPrice(Map<String, dynamic> allProductList) {
  dynamic totalPrice = 0;
  for (var pd in allProductList.entries) {
    if (pd.key.contains('price')) {
      totalPrice += pd.value;
    }
  }
  return totalPrice;
}

Map<String, dynamic> LaptopSelect(
  List<Map<String, dynamic>> selectCpu,
  String inputCPU,
  List<Map<String, dynamic>> selectStorage,
  String InputStorage,
) {
  Map<String, dynamic> allProductLaptop = {};

  for (var cpu in selectCpu) {
    if (cpu["name"] == inputCPU) {
      allProductLaptop["cpu_name"] = cpu["name"];
      allProductLaptop["cpu_price"] = cpu["price"];
    }
  }
  for (var storage in selectStorage) {
    if (storage['name'] == InputStorage) {
      allProductLaptop['st_name'] = storage['name'];
      allProductLaptop['st_price'] = storage['price'];
    }
  }
  return allProductLaptop;
}

void laptopList(Map<String, dynamic> allProduct) {
  dynamic total = 0;

  for (var product in allProduct.entries) {
    if (product.key.contains("name")) {
      String nameLabel = product.key.contains("cpu") ? "CPU" : "Storage";
      print("$nameLabel: ${product.value}");
    }

    if (product.key.contains("price")) {
      total += product.value;
      print("Price: ৳${product.value}");
    }
  }

  print("Total: ৳$total");
}

Map<String, dynamic> mealOrder(
  List<Map<String, dynamic>> selectedITEM1,
  String mealName,
  List<Map<String, dynamic>> selectedITEM2,
  String drinks,
) {
  Map<String, dynamic> result = {};

  for (var item1 in selectedITEM1) {
    if (mealName == item1['name']) {
      result["meal_name"] = item1['name'];
      result["meal_price"] = item1['price'];
    }
  }
  for (var item2 in selectedITEM2) {
    if (drinks == item2["name"]) {
      result['drinks_name'] = item2['name'];
      result['drinks_price'] = item2['price'];
    }
  }
  return result;
}

void priceMealAndDrinks(Map<String, dynamic> item) {
  dynamic totalPrice = 0;

  if (item.containsKey("meal_name")) {
    print(" Meal : ${item["meal_name"]} = ${item["meal_price"]} Taka");
    totalPrice += item["meal_price"];
  }
  if (item.containsKey("drinks_name")) {
    print("Drinks  : ${item["drinks_name"]} = ${item["drinks_price"]} Taka ");
    totalPrice += item["drinks_price"];
  }
  print("Total $totalPrice Taka");
}

Map<String, dynamic> PcBuildThreeItem(
  List<Map<String, dynamic>> selectedCpus,
  String nameCpus,
  List<Map<String, dynamic>> selectedRams,
  String nameRams,
  List<Map<String, dynamic>> selectedGpus,
  String nameGpus,
) {
  Map<String, dynamic> result = {};

  for (var item in selectedCpus) {
    if (nameCpus == item["name"]) {
      result["cpu_name"] = item["name"];
      result["cpu_price"] = item["price"];
    }
  }
  for (var item in selectedRams) {
    if (nameRams == item['name']) {
      result['ram_name'] = item["name"];
      result['ram_price'] = item["price"];
    }
  }
  for (var item in selectedGpus) {
    if (nameGpus == item["name"]) {
      result['gpu_name'] = item['name'];
      result['gput_price'] = item["price"];
    }
  }
  return result;
}

void pcBuildThreeTotal(Map<String, dynamic> selectedItem) {
  dynamic totalPrice = 0;

  if (selectedItem.containsKey("cpu_name")) {
    print(
      "Cpu : ${selectedItem['cpu_name']} = ${selectedItem['cpu_price']} Taka",
    );
    totalPrice += selectedItem['cpu_price'];
  }
  if (selectedItem.containsKey("ram_name")) {
    print(
      "Ram : ${selectedItem['ram_name']} = ${selectedItem['ram_price']} Taka",
    );
    totalPrice += selectedItem['ram_price'];
  }
  if (selectedItem.containsKey("gpu_name")) {
    print(
      "Gpu : ${selectedItem['gpu_name']} = ${selectedItem['gput_price']} Taka",
    );
    totalPrice += selectedItem['gput_price'];
  }
  print("Total Price  $totalPrice");
}

Map<String, dynamic> groceryFunction(
  List<Map<String, dynamic>> catagory,
  String item1,
  String item2,
) {
  Map<String, dynamic> result = {};

  for (var itemC in catagory) {
    if (itemC['name'] == item1) {
      result['item1_name'] = itemC['name'];
      result['item1_price'] = itemC['price'];
    }
    if (itemC['name'] == item2) {
      result['item2_name'] = itemC['name'];
      result['item2_price'] = itemC['price'];
    }
  }
  return result;
}

void grocerAddition(Map<String, dynamic> SelectedProduct) {
  dynamic totalPrice = 0;
  var item1Name;
  var item1Price;
  var item2Name;
  var item2Price;

  if (SelectedProduct.containsKey("item1_name")) {
    item1Name = SelectedProduct['item1_name'];
    item1Price = SelectedProduct['item1_price'];
    totalPrice += SelectedProduct['item1_price'];
  }
  if (SelectedProduct.containsKey("item2_name")) {
    item2Name = SelectedProduct['item2_name'];
    item2Price = SelectedProduct['item2_price'];
    totalPrice += SelectedProduct["item2_price"];
  }
  print("Selected item : $item1Name = $item1Price & $item2Name = $item2Price");
  if (item1Name == "rice" && item2Name == "oil") {
    print("Your Are Availabe 10% Discount ");
    print("Total  Price : ${totalPrice * 0.90}");
  } else {
    print("Total Price : $totalPrice");
  }
}

Map<String, dynamic> bookStoreSummary(
  List<Map<String, dynamic>> ProductType,
  List<String> SelectedItem,
) {
  Map<String, dynamic> result = {};

  int count = 1;

  for (var pt in ProductType) {
    if (SelectedItem.contains(pt['name'])) {
      result["item${count}_name"] = pt['name'];
      result["item${count}_price"] = pt['price'];
      count++;
    }
  }
  return result;
}

void bookStoreOrder(Map<String, dynamic> selectedItems) {
  dynamic totalPrice = 0;

  print("🛒 Selected Books:");
  for (int i = 1; i <= selectedItems.length ~/ 2; i++) {
    String name = selectedItems['item${i}_name'];
    dynamic price = selectedItems['item${i}_price'];
    print("📘 Book: $name (৳ $price)");
    totalPrice += price;
  }

  print("💰 Total Price: ৳ $totalPrice");
}

Map<String, dynamic> mobileAccessories(
  List<Map<String, dynamic>> inputProductType,
  List<String> inputItemName,
) {
  Map<String, dynamic> result = {};
  int count = 1;
  for (var product in inputProductType) {
    if (inputItemName.contains(product["name"])) {
      result["item${count}_name"] = product['name'];
      result["item${count}_price"] = product['price'];
      count++;
    }
  }
  return result;
}

void mobileAccessorieResult(Map<String, dynamic> SelectedItem) {
  dynamic totalPrice = 0;

  for (int i = 1; i <= SelectedItem.length ~/ 2; i++) {
    String itemName = SelectedItem["item${i}_name"];
    dynamic itemPrice = SelectedItem["item${i}_price"];
    print("Accessory:  $itemName ($itemPrice Taka)");
    totalPrice += itemPrice;
  }
  print("Total Price : $totalPrice Taka");
}

Map<String, dynamic> gypPackageSelect(
  List<Map<String, dynamic>> membership,
  String selectMemebershipPlan,
  List<Map<String, dynamic>> dietPlan,
  String selectDietPlan,
) {
  Map<String, dynamic> result = {};

  for (var ms in membership) {
    if (selectMemebershipPlan == ms["name"]) {
      result["item1_name"] = ms['name'];
      result['item1_price'] = ms['price'];
    }
  }
  for (var dt in dietPlan) {
    if (selectDietPlan == dt["name"]) {
      result['item2_name'] = dt['name'];
      result['item2_price'] = dt['price'];
    }
  }
  return result;
}

void gymDisplay(Map<String, dynamic> SelectedItem) {
  dynamic totalPrice = 0;

  print(
    "Membership :  ${SelectedItem['item1_name']}  ${SelectedItem['item1_price']}",
  );
  totalPrice += SelectedItem['item1_price'];

  print("Total Price = $totalPrice");
}

//Mobile Recharge Combo
List<Map<String, dynamic>> rechargePlans = [
  {"name": "Minute Pack", "price": 50},
  {"name": "Internet Pack", "price": 100},
  {"name": "Combo Pack", "price": 150},
];

List<Map<String, dynamic>> bonusOffers = [
  {"name": "Extra Data", "price": 20},
  {"name": "Cashback", "price": 15},
];

String selectRechargePlans = "Internet Pack";
String selectBonusOffer = "";

void mobileRechargeCombo(
  List<Map<String, dynamic>> rechargePlans,
  String SelectRechargePlans,
  List<Map<String, dynamic>> bonusOffers,
  String SelectBonusOffer,
) {
  Map<String, dynamic> SelectedItem = {};

  for (Map<String, dynamic> RP in rechargePlans) {
    String plansName = RP['name'];
    dynamic plansPrice = RP['price'];
    if (plansName == SelectRechargePlans) {
      SelectedItem['recharge_name'] = plansName;
      SelectedItem['recharge_price'] = plansPrice;
    }
  }
  for (Map<String, dynamic> bonusof in bonusOffers) {
    String bonusOfferName = bonusof['name'];
    dynamic bonusOfferPrice = bonusof['price'];
    if (SelectBonusOffer == bonusOfferName) {
      SelectedItem['bonus_name'] = bonusOfferName;
      SelectedItem['bonus_price'] = bonusOfferPrice;
    }
  }

  dynamic totalPrice = 0;

  if (SelectedItem.containsKey("recharge_name")) {
    totalPrice += SelectedItem["recharge_price"];
    print(
      "\nPlan : ${SelectedItem["recharge_name"]}  ${SelectedItem["recharge_price"]} Taka",
    );
  }
  if (SelectedItem.containsKey("bonus_name")) {
    totalPrice += SelectedItem['bonus_price'];
    print(
      "Bonus : ${SelectedItem['bonus_name']} ${SelectedItem['bonus_price']} Taka",
    );
  } else {
    print("Bonus : None");
  }

  print("Total Price $totalPrice");
}

//Movie Ticket Booking
List<Map<String, dynamic>> ticketTypes = [
  {"name": "Regular", "price": 200},
  {"name": "Premium", "price": 350},
  {"name": "VIP", "price": 500},
];

String SelectedTicket = "Regular";
int quantity = 3;

void movieTicketBoking(
  List<Map<String, dynamic>> ticketTypes,
  String SelectedTicket,
  int quantity,
) {
  Map<String, dynamic> Ticket = {};

  for (Map<String, dynamic> tt in ticketTypes) {
    String ticketName = tt['name'];
    dynamic tickePrice = tt['price'];
    if (ticketName == SelectedTicket) {
      Ticket['name'] = ticketName;
      Ticket['price'] = tickePrice;
    }
  }
  dynamic totalPrice = 0;
  if (Ticket.containsKey("name")) {
    totalPrice = (Ticket['price'] * quantity);
    print("\nTicket Type : ${Ticket['name']} ${Ticket['price']} Taka");
  }
  print("Quantity : $quantity");
  print("Total $totalPrice Taka");
}
void main() {
  print("\nStudent Weekly Mark");
  String studentName = "Bayajit";

  List<Map<String, dynamic>> marks = [
    {"day": "Mon", "mark": 80},
    {"day": "Tue", "mark": 95},
    {"day": "Wed", "mark": 80},
    {"day": "Thu", "mark": 75},
    {"day": "Fri", "mark": 90},
    {"day": "Sat", "mark": 85},
    {"day": "Sun", "mark": 90},
  ];

  studentanalyzeStudentPerformance(studentName, marks);

  print("\nSum Of 2 Number");

  int firstNumber = 44;
  int secandNumber = 33;
  print(
    "Sum Of $firstNumber + $secandNumber = ${sumOfNumber(firstNumber, secandNumber)}",
  );

  print("\nFind Even or Odd");

  int numberEvenOdd = 55;

  if (evenOrOdd(numberEvenOdd) == 0) {
    print("Your Number $numberEvenOdd Is Even");
  } else {
    print("Your Number $numberEvenOdd Is Odd");
  }

  print("\nFactorial of a Number");
  int userFactorialNumbr = 5;
  print(
    "Your Factorial Number $userFactorialNumbr = ${factorialOfNumber(userFactorialNumbr)}",
  );

  print("\nPalindrome Checker");
  String inputPalindromeNumber = "999";
  String showResult = palindromeChecker(inputPalindromeNumber);
  print(showResult);

  print("\nPrime Number  Checker");
  String inputUserPrime = "5";
  String ShowPrimeNumber = primeNumberChecker(inputUserPrime);
  print(ShowPrimeNumber);

  print("\ngrocery Budget Tracker");

  List<Map<String, dynamic>> items = [
    {"item": "Rice", "price": 50},
    {"item": "Oil", "price": 120},
    {"item": "Egg", "price": 30},
    {"item": "Fish", "price": 180},
    {"item": "Salt", "price": 20},
  ];
  int userBudget = 200;
  groceryBudgetTracker(items, userBudget);

  print("\nEven Or Odd Sum");
  List<int> evenOdd = [7, 12, 19, 24, 33, 40, 55, 61];
  evenOddSum(evenOdd);

  print("\nStudent Passed");
  List<Map<String, dynamic>> students = [
    {"name": "Bayajit", "mark": 80},
    {"name": "Rafi", "mark": 45},
    {"name": "Siam", "mark": 90},
  ];
  studentsMarks(students);

  print("\nSUM OF 2 MAPS 2 ITEMS");
  List<Map<String, dynamic>> proccesor = [
    {"name": "intel core i3 10th gen", "price": 14000},
    {"name": "intel Core i5 11th  gen", "price": 15000},
    {"name": "intel Core i7 12th  gen", "price": 16000},
    {"name": "intel Core i9 13th  gen", "price": 17000},
  ];

  List<Map<String, dynamic>> ram = [
    {"name": "coresair", "price": 2000},
    {"name": "coresair 16gb", "price": 6000},
    {"name": "kingstone 16gb", "price": 4000},
    {"name": "kingstone 8gb", "price": 3000},
  ];

  var pcbuildselected = pcBuild(
    "intel core i3 10th gen",
    proccesor,
    "coresair",
    ram,
  );

  dynamic totalPrice = sumofmap(pcbuildselected);
  print(pcbuildselected);
  print("Total Price : $totalPrice");

  print("\nGrocery Total Price");
  List<Map<String, dynamic>> groceryItems = [
    {"name": "rice", "price": 50},
    {"name": "oil", "price": 160},
    {"name": "salt", "price": 30},
    {"name": "sugar", "price": 70},
  ];

  var itemselect = groceryTracker(groceryItems, "rice", "sugar");
  dynamic totalPriceGorccery = totalGroceryPrice(itemselect);
  print(itemselect);
  print("Total Grocery Price $totalPriceGorccery");

  print("\nLaptop Customization Selector");
  List<Map<String, dynamic>> cpuList = [
    {"name": "i3", "price": 12000},
    {"name": "i5", "price": 17000},
    {"name": "i7", "price": 23000},
  ];

  List<Map<String, dynamic>> storageList = [
    {"name": "256GB SSD", "price": 4000},
    {"name": "512GB SSD", "price": 6000},
    {"name": "1TB HDD", "price": 3500},
  ];

  var NewLapTopMap = LaptopSelect(cpuList, "i5", storageList, "256GB SSD");
  laptopList(NewLapTopMap);

  print("\nRestaurant Meal Order");
  List<Map<String, dynamic>> meals = [
    {"name": "burger", "price": 120},
    {"name": "pizza", "price": 300},
    {"name": "pasta", "price": 220},
  ];

  List<Map<String, dynamic>> drinks = [
    {"name": "coke", "price": 40},
    {"name": "coffee", "price": 100},
    {"name": "juice", "price": 80},
  ];

  var orderMeal = mealOrder(meals, "pizza", drinks, "coffee");
  priceMealAndDrinks(orderMeal);

  print("\n3-item Combo Selection");
  List<Map<String, dynamic>> cpus = [
    {"name": "Ryzen 3", "price": 10000},
    {"name": "Ryzen 5", "price": 15000},
  ];

  List<Map<String, dynamic>> rams = [
    {"name": "8GB", "price": 3000},
    {"name": "16GB", "price": 6000},
  ];

  List<Map<String, dynamic>> gpus = [
    {"name": "GTX 1050", "price": 8000},
    {"name": "GTX 1650", "price": 12000},
  ];

  pcBuildThreeTotal(
    PcBuildThreeItem(cpus, "Ryzen 3", rams, "16GB", gpus, "GTX 1650"),
  );

  print("\n Grocery Combo Discount");
  List<Map<String, dynamic>> groceryItems1 = [
    {"name": "rice", "price": 100},
    {"name": "oil", "price": 200},
    {"name": "salt", "price": 50},
  ];
  String userChoice1 = "rice";
  String userChoice2 = "salt";

  var groccery = groceryFunction(groceryItems1, userChoice1, userChoice2);
  grocerAddition(groccery);

  print("\nBook Store Order Summary");
  List<Map<String, dynamic>> books = [
    {"name": "English Grammar", "price": 300},
    {"name": "Bangla Kobita", "price": 250},
    {"name": "Math Solution", "price": 500},
    {"name": "Science Facts", "price": 400},
  ];

  List<String> booksSelect = [
    "English Grammar",
    "Math Solution",
    "Science Facts",
  ];

  var book = bookStoreSummary(books, booksSelect);
  bookStoreOrder(book);

  print("\nMobile Accessories Cart");
  List<Map<String, dynamic>> accessories = [
    {"name": "charger", "price": 500},
    {"name": "earphones", "price": 700},
    {"name": "power bank", "price": 1200},
    {"name": "USB cable", "price": 150},
  ];

  List<String> userChoiceMobileAccessorires = [
    "charger",
    "earphones",
    "power bank",
  ];

  var mAR = mobileAccessories(accessories, userChoiceMobileAccessorires);
  mobileAccessorieResult(mAR);

  print("\nGym Membership Plan Selector");
  List<Map<String, dynamic>> membership = [
    {"name": "monthly", "price": 1200},
    {"name": "half-yearly", "price": 6000},
    {"name": "yearly", "price": 10000},
  ];

  List<Map<String, dynamic>> dietPlan = [
    {"name": "basic", "price": 1500},
    {"name": "advanced", "price": 3000},
  ];

  var displaygyp = gypPackageSelect(
    membership,
    "half-yearly",
    dietPlan,
    "basic",
  );
  gymDisplay(displaygyp);
  mobileRechargeCombo(
    rechargePlans,
    selectRechargePlans,
    bonusOffers,
    selectBonusOffer,
  );
  movieTicketBoking(ticketTypes, SelectedTicket, quantity);
}
