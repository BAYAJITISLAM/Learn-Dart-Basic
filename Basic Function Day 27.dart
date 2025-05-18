import 'dart:async';
import 'dart:ffi';

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
}
