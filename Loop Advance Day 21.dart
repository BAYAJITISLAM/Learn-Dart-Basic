

void main() {
  //Movie Ticket Discount Calculator

  List<String> people = ["adult", "child", 'child', 'adult', 'child', 'adult'];

  int ticketpriceAdult = 200;
  int ticketpriceChild = 100;
  int numberOfAdult = 0;
  int numberOfChild = 0;

  for (int i = 0; i < people.length; i++) {
    String peoples = people[i];
    if (peoples == "adult") {
      numberOfAdult++;
      print("Your Ticket Prcie $ticketpriceAdult");
    } else {
      numberOfChild++;
      print("Your Ticket Price  $ticketpriceChild");
    }
  }
  int totalCost =
      (numberOfAdult * ticketpriceAdult) + (numberOfChild * ticketpriceChild);
  print("Total Cost $totalCost");
  if (people.length > 5) {
    double afterDiscount = totalCost * 0.9;
    print("After Discount Price $afterDiscount");
  }

  //Mobile Data Usage Tracker

  double totalData = 10.00;
  List<double> dailyUsage = [1.2, 0.9, 2.5, 1.7, 1.1];

  for (int i = 0; i < dailyUsage.length; i++) {
    double data = dailyUsage[i];

    totalData -= data;

    print("Day ${i + 1}: Used  $data GB, Remaining $totalData");
  }
  if (totalData < 3.0) {
    print("Warning: You are running Low Data $totalData");
  }

  //Fitness Progress Analyzer

  List<int> number = [1, 2, 3, 4, 5];
  int sum = 0;

  for (int i = 0; i < number.length; i++) {
    int numberr = number[i];
    sum += numberr;
  }
  print(sum);

  int inputOddEven = 4;

  if (inputOddEven % 2 == 0) {
    print("$inputOddEven Number is Even");
  } else {
    print("$inputOddEven Number is Odd");
  }

  int multiplicationNumber = 5;
  int mulitplicationNumber2 = 10;

  for (int i = 1; i <= mulitplicationNumber2; i++) {
    int multiplication = multiplicationNumber * i;
    print("$multiplication x $i = $multiplication");
  }

  //Beginner Level
  //Movie Ticket Discount Calculator

  int adult = 200;
  int children = 150;
  int adultNum = 0;
  int childrenNumb = 0;
  dynamic finaltotal;

  List<String> peopleTicket = [
    'adult',
    'child',
    'child',
    'adult',
    'child',
    'adult',
  ];

  for (int i = 0; i < peopleTicket.length; i++) {
    String peopleT = peopleTicket[i];
    if (peopleT == "adult") {
      adultNum++;
    } else {
      childrenNumb++;
    }
  }
  int totalWithoutDiscount = (adultNum * adult) + (childrenNumb * children);

  if (peopleTicket.length > 5) {
    finaltotal = totalWithoutDiscount * 0.9;
  } else {
    finaltotal = totalWithoutDiscount;
  }

  print("Your Bill $finaltotal");

  //Daily Step Tracker

  int greatDay = 0;
  int avarageDay = 0;
  int lazyDay = 0;

  List<int> steps = [5000, 8500, 3000, 10000, 4000];

  for (int i = 0; i < steps.length; i++) {
    int step = steps[i];
    if (step > 8000) {
      print(" Day ${i + 1} Great Day");
      greatDay++;
    } else if (step > 4000) {
      print("Avarage Day");
      avarageDay++;
    } else {
      print("Lazy Day");
      lazyDay++;
    }
  }
  print("\nSummary:");
  print("Great Day $greatDay ");
  print("Avarege Day $avarageDay");
  print("Lazy Day $lazyDay");

  //Intermediate Level
  // Mobile Data Usage Tracker
  double totalGb = 10.00;

  List<double> dailyUsageMb = [1.2, 0.9, 2.5, 1.7, 1.1];

  for (int i = 0; i < dailyUsageMb.length; i++) {
    double dailyusage1 = dailyUsageMb[i];
    totalGb -= dailyusage1;

    print("Day ${i + 1} You Usage $dailyusage1  Remaining $totalGb");
    if (totalGb < 1.0) {
      print("You will run out of data before the end of the month.");
    }
  }

  //Grocery Bill with Offers

  List<Map<String, dynamic>> items = [
    {'name': 'Milk', 'price': 60},
    {'name': 'Bread', 'price': 40},
    {'name': 'Rice', 'price': 150},
    {'name': 'Oil', 'price': 180},
  ];
  double totalbill = 0;
  for (var item in items) {
    dynamic name = item['name'];
    dynamic price = item['price'];
    print("Item $name  Price $price ");
    totalbill += price;
  }
  if (totalbill > 400) {
    totalbill * 0.95;
    print("Total Bill $totalbill");
  } else {
    print("Total Bill $totalbill");
  }

  // Advanced Level
  //Fitness Progress Analyzer

  List<double> weightLog = [72.5, 71.8, 71.3, 70.9, 70.4];

  double totalWeightLost = 0;
  double previusWeightLost = weightLog[0];
  int week = weightLog.length;

  for (int i = 1; i < week; i++) {
    double weightThisWeek = weightLog[i];
    double weightLost = previusWeightLost - weightThisWeek;

    print("Week ${i} Weight Lost ${weightLost.toStringAsFixed(2)} Kg");

    if (weightLost < 0) {
      print("Warning Weight IncreasED in week ${i + 1}");
    } else {
      totalWeightLost += weightLost;
    }

    previusWeightLost = weightThisWeek;
  }
  print("Total Weight Lost :  ${totalWeightLost.toStringAsFixed(2)} Kg");

  double averagweeklyloss = totalWeightLost / (week - 1);

  print("Average Weekly Weight Loss : ${averagweeklyloss.toStringAsFixed(2)}");

  // Daily Water Intake Tracker

  List<double> waterIntake = [2.5, 3.0, 2.8, 1.9, 2.2, 2.7, 3.1];

  double totalDring = 0;
  double previusDay = waterIntake[0];
  int weeks = waterIntake.length;

  totalDring += previusDay;

  for (var i = 1; i < weeks; i++) {
    var currentDay = waterIntake[i];
    var differentDringks = currentDay - previusDay;

    print(differentDringks);

    if (differentDringks < 0.00) {
      print("Drink More");
    }

    totalDring += currentDay;
    previusDay = currentDay;
  }
  print(totalDring);
}




