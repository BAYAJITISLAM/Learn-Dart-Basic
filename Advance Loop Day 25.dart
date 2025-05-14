void main() {
 //Monthly Subscription Manager

  List<int> MonthlyExpenses = [400, 600, 444, 676, 456];

  int expneses = 0;

  for (int i = 0; i < MonthlyExpenses.length; i++) {
    expneses += MonthlyExpenses[i];
    print("Month ${i + 1}; ${MonthlyExpenses[i]}");
  }

  print("Total Expenses $expneses");

  if (expneses > 2000) {
    print("Consider Cencelling Some Subscription");
  }

  //Step Goal Achievement Tracker

  List<int> goalWeek = [3333, 3323, 5544, 6454, 6334, 3343, 3453];

  int goalMeatDays = 0;

  for (int i = 0; i < goalWeek.length; i++) {
    if (goalWeek[i] > 6000) {
      print("Goal Met! You Walk ${goalWeek[i]}");
      goalMeatDays++;
    } else {
      print("Walk More!  You Walk ${goalWeek[i]}");
    }
  }

  print("Total Days Goal Meet $goalMeatDays");

  //Meal Calorie Counter

  List<int> dailyCalorie = [550, 600, 450, 700, 300];

  int highCalories = 600;
  int totalCalories = 0;

  for (int i = 0; i < dailyCalorie.length; i++) {
    totalCalories += dailyCalorie[i];

    if (dailyCalorie[i] > highCalories) {
      print("Day ${i + 1}: High Calorie meal detected ${dailyCalorie[i]}");
    }
  }
  print("Total Calories $totalCalories");

  //Monthly Expense Tracker with Warning

  List<int> monthlytracker = [1800, 2500, 2300, 1500, 3200, 2700];

  int totalMoneyExpensese = 0;

  for (int i = 0; i < monthlytracker.length; i++) {
    totalMoneyExpensese += monthlytracker[i];
    int singletran = monthlytracker[i];

    if (monthlytracker[i] > 2000) {
      print("Day ${i + 1}: Large Transaction Alert $singletran");
    } else {
      print("Day ${i + 1}: Good Job $singletran");
    }
  }
  print("Total Expenses $totalMoneyExpensese");

  //Student Grade Analyzer

  List<int> studentGrade = [75, 88, 59, 93, 47, 62, 40, 50, 66, 45, 88, 22, 99];
  int gradeCountA = 0;
  int gradeCountC = 0;
  int gradeCountD = 0;
  int gradeCountB = 0;

  int gradeA = 80;
  int gradeB = 70;
  int gradeC = 60;
  int gradeD = 40;

  for (int i = 0; i < studentGrade.length; i++) {
    int singlemark = studentGrade[i];
    if (singlemark >= gradeA) {
      print("Student ${i + 1}: A");
      gradeCountA++;
    } else if (singlemark >= gradeB) {
      print("Student ${i + 1}: B");
      gradeCountB++;
    } else if (singlemark >= gradeC) {
      print("Student ${i + 1}: C");
      gradeCountC++;
    } else if (singlemark >= gradeD) {
      print("Student ${i + 1}: D");
      gradeCountD++;
    }
  }
  print("A:$gradeCountA");
  print("B:$gradeCountB");
  print("C:$gradeCountC");
  print("D:$gradeCountD");

  int totalHours = 0;

  for (int i = 1; i <= 10; i++) {
    print("Day $i : $i Hours");
    totalHours += i;
  }
  print("Your Study Last 10 Days $totalHours");

  //Freelance Project Timeline Estimator

  List<int> hourList = [2, 5, 3, 4, 6, 2, 3, 5, 1, 4];

  int availabeHour = 3;
  int totalExtra = 0;
  for (int i = 0; i < hourList.length; i++) {
    int singleHour = hourList[i];
    if (singleHour <= availabeHour) {
      print(
        "Task ${i + 1}:Fits within daily $singleHour hours (No Extra Hours Needed)",
      );
    } else {
      print(
        "Task  ${i + 1}:  Extra hours needed ${singleHour - availabeHour} Hours",
      );
      totalExtra += singleHour - availabeHour;
    }
  }
  print("Total Extra Hours Needed $totalExtra");

  // Monthly Salary Tracker with Tax

  List<int> salaries = [30000, 45000, 52000, 70000, 100000];

  double totalTax = 9;

  for (int i = 1; i < salaries.length; i++) {
    int salary = salaries[i];
    double tax = 9;
    double netSalary = 9;

    if (salary < 50000) {
      tax = salary - 0.05;
    } else if (salary <= 80000) {
      tax = salary - 0.10;
    } else if (salary > 80000) {
      tax = salary - 0.15;
    }
    netSalary = salary - tax;
    totalTax += tax;

    print('Month ${i + 1} → Net Salary: ₹$netSalary, Tax Paid: ₹$tax');
  }
  print('\nTotal Tax Paid in 5 months: ₹$totalTax');

  //Freelance Earnings Tracker

  List<int> earnings = [2000, 1500, 5000, 800, 1200];

  double platformEarn = 0;

  for (int i = 0; i < earnings.length; i++) {
    int earn = earnings[i];
    double platformfee = earn * 0.20;
    double netEarn = earn - platformfee;
    platformEarn += platformfee;

    print("I am Earn $netEarn");
  }
  print("Platform Earn $platformEarn");

  // Bill Splitter with Tip

  List<int> bills = [1200, 2450, 900, 1650];
  int numberOfPeople = 3;
  double totalTip = 0;
  double perfriendsbil = 0;

  for (int i = 0; i < bills.length; i++) {
    int bill = bills[i];
    double tip = bill * 0.10;
    double totalBill = bill + tip;
    double oneFriendsBill = totalBill / numberOfPeople;

  print("Outing ${i + 1}: Total Bill = ₹$bill, Tip = ₹${tip.toStringAsFixed(2)}, Each Pays = ₹${oneFriendsBill.toStringAsFixed(2)}");

    perfriendsbil += oneFriendsBill;
    totalTip += tip;

    
  }
  print("Every Friends Pay Bill $perfriendsbil");
  print("Total  Tip $totalTip");

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


  //Expense Categorizer

  List<int> expenses = [120, 500, 70, 1350, 2300, 15, 980];

  int low = 0;
  int medium = 0;
  int high = 0;

  for (int i = 0; i < expenses.length; i++) {
    int expense = expenses[i];

    if (expense < 100) {
      print("Low");
      low++;
    } else if (expense < 1000) {
      print("Medium");
      medium++;
    } else {
      print("High");
      high++;
    }
  }
  print("Low  $low Medium $medium High $high");

  //Fitness Tracker

  List<int> steps_5 = [3000, 7600, 4500, 10000, 8700, 1200, 9500];

  int great = 0;
  int okay = 0;
  int tryHarder = 0;

  for (int i = 0; i < steps_5.length; i++) {
    int step = steps_5[i];

    if (step >= 8000) {
      great++;
    } else if (step >= 5000) {
      okay++;
    } else {
      tryHarder++;
    }
  }
  print("Great $great Days ");
  print("Okay $okay Days ");
  print("Try Harder $tryHarder Days");

  //Monthly Salary Tracker with Tax

  List<int> salaries_6 = [30000, 45000, 52000, 70000, 100000];
  double afterTaxSalari = 0;
  double totalTax_6 = 0;
  double tax = 0;
  double netselari = 0;
  for (int i = 0; i < salaries_6.length; i++) {
    int salari = salaries_6[i];

    if (salari < 50000) {
      tax = salari * 0.05;
      afterTaxSalari = salari - tax;
      print("Month  ${i + 1}: $afterTaxSalari Taka");
    } else if (salari < 80000) {
      tax = salari * 0.10;
      afterTaxSalari = salari - tax;
      print("Month  ${i + 1}: $afterTaxSalari Taka");
    } else {
      tax = salari * 0.15;
      afterTaxSalari = salari - tax;
      print("Month  ${i + 1}: $afterTaxSalari Taka");
    }
    totalTax_6 += tax;
    netselari += afterTaxSalari;
  }
  print("After Tax Five Month Net Selaros : $netselari");
  print("Five Month Tax $totalTax");

   // Fuel Alert
  List<double> fuelLevel = [23.33, 23.32, 77.44, 34.34, 43.43];
  for (int i = 0; i < fuelLevel.length; i++) {
    if (fuelLevel[i] <= 25.00) {
      print("Trip $i : Fuel Low! Refill Soon");
    } else {
      print("Trip $i : Fuel Level OK");
    }
  }

  // Calorie Counter
  List<int> trackDaily = [545, 1233, 4545, 3233, 1866, 1500, 2222];
  for (int i = 0; i < trackDaily.length; i++) {
    if (trackDaily[i] >= 2500) {
      print("Day $i: You ate too much!");
    } else if (trackDaily[i] >= 1800 && trackDaily[i] < 2500) {
      print("Day $i: Healthy intake.");
    } else {
      print("Day $i: Eat a bit more.");
    }
  }

  // Daily Screen Time
  List<int> weeklyScreen = [4, 7, 5, 8, 4, 8, 3];
  for (int i = 0; i < weeklyScreen.length; i++) {
    if (weeklyScreen[i] > 6) {
      print("Day $i: Too Much Screen Time");
    } else {
      print("Day $i: Good Job Managing Time");
    }
  }

  // Weekly Water Intake Tracker
  List<int> drankGlass = [4, 6, 8, 3, 6, 8, 9];
  for (int i = 0; i < drankGlass.length; i++) {
    if (drankGlass[i] < 6) {
      print("Day $i: Drink More Water");
    } else {
      print("Day $i: Well Hydrated!");
    }
  }

  // Mood Tracker
  List<String> moodTracker = ["sad", "okay", "happy"];
  for (int i = 0; i < moodTracker.length; i++) {
    if (moodTracker[i] == "okay") {
      print("Day $i: Hang in there!");
    } else if (moodTracker[i] == "sad") {
      print("Day $i: Take care of yourself!");
    } else if (moodTracker[i] == "happy") {
      print("Day $i: Keep smiling!");
    } else {
      print("Day $i: No Data");
    }
  }

  // Multiplication Table Printer
  int inputMultiplicationTable = 7;
  for (int i = 1; i <= 10; i++) {
    print("$inputMultiplicationTable x $i = ${inputMultiplicationTable * i}");
  }

  // Daily Temperature Converter
  List<double> weeklyTemps = [25.5, 30.0, 18.2, 22.0, 35.1, 28.3, 20.5];
  for (int i = 0; i < weeklyTemps.length; i++) {
    double f = (weeklyTemps[i] * 9 / 5) + 32;
    print("Day ${i + 1}: ${weeklyTemps[i]}°C = ${f.toStringAsFixed(1)}°F");
  }

  // Bus Seat Label Generator
  for (int i = 1; i <= 40; i++) {
    print("Seat $i");
  }

  // Countdown Timer
  for (int i = 10; i >= 0; i--) {
    if (i > 0) {
      print(i);
    } else {
      print("Time's Up!");
    }
  }

  // Grocery List Display
  List<String> groceryList = ['Milk', 'Eggs', 'Bread'];
  for (int i = 0; i < groceryList.length; i++) {
    print("Item ${i + 1}: ${groceryList[i]}");
  }



  // Even Number Finder (1 to 20)
  for (int i = 0; i <= 20; i++) {
    if (i % 2 == 0) {
      print("$i: Even Number");
    } else {
      print("$i: Odd Number");
    }
  }

  // Savings Growth
  List<int> saving = [500, 600, 700, 300, 450, 300];
  int total = 0;
  for (int i = 0; i < saving.length; i++) {
    total += saving[i];
    print("Month ${i + 1}: $total");
  }

  // Daily Motivational Quote
  List<String> motivationalMessages = [
    "Keep pushing!",
    "Stay strong!",
    "Don’t stop now!",
    "Keep going, you’re doing great!",
    "You’ve got this!",
  ];
  for (int i = 0; i < motivationalMessages.length; i++) {
    print("Day ${i + 1}: ${motivationalMessages[i]}");
  }

  // Price List with Discount
  List<double> prices = [199.99, 350.50, 120.75, 899.99, 45.60];
  for (int i = 0; i < prices.length; i++) {
    double newPrice = prices[i] - (prices[i] * 0.10);
    print("Discounted Price: ${newPrice.toStringAsFixed(2)}");
  }

  // Water Intake Tracker
  int startingDrink = 2000;
  for (int i = 0; i < 7; i++) {
    print("Day \${i + 1}: ${startingDrink}ml");
    startingDrink += 250;
  }

  // Medication Reminder
  for (int i = 2; i <= 10; i += 2) {
    print("Hour $i: Take your medicine");
  }

  // Expense Prompt
  for (int i = 0; i < 7; i++) {
    print("Enter expense for Day ${i + 1}");
  }

  // Workout Countdown
  for (int i = 5; i > 0; i--) {
    print("Rep $i");
  }

  // Fuel Cost Estimator
  int dailyDistance = 15;
  int fuelPrice = 120;
  int mileage = 30;
  double fuelPerDay = dailyDistance / mileage;
  double costPerDay = fuelPerDay * fuelPrice;
  for (int i = 0; i < 7; i++) {
    print("Day ${i + 1}: ${costPerDay.toStringAsFixed(0)} Taka");
  }

  // Sleep Tracker
  List<double> sleepHours = [7.5, 6.0, 8.0, 5.5, 7.0, 6.5, 8.5];
  for (int i = 0; i < sleepHours.length; i++) {
    if (sleepHours[i] >= 8) {
      print('Day ${i + 1}: Well Rested!');
    } else {
      print("Day ${i + 1}: Try to sleep more");
    }
  }

  // Savings Growth Tracker
  int savingPerWeek = 500;
  for (int i = 0; i < 10; i++) {
    if (i == 9) {
      print("Total Saving: ${(i + 1) * savingPerWeek}");
    }
  }

  // Phone Battery Drain Simulator
  for (int i = 100; i > 10; i -= 7) {
    print("Battery: $i%");
    if (i < 20) {
      print("Charge your phone!");
    }
  }

  // Calorie Burn Planner
  int startingTime = 20;
  int increasePerDay = 10;
  int cbpm = 8;
  for (int i = 0; i < 7; i++) {
    int calories = (startingTime + i * increasePerDay) * cbpm;
    print("Day ${i + 1}: $calories Calories");
  }

  // Grocery Budget Planner
  List<int> itemPrices = [300, 450, 700, 200, 400];
  int budgetLimit = 2000;
  int totalPrice = 0;
  for (int i = 0; i < itemPrices.length; i++) {
    totalPrice += itemPrices[i];
    if (totalPrice > budgetLimit) {
      print("Over Budget");
      break;
    }
  }
  if (totalPrice <= budgetLimit) {
    print("Within Budget");
  }

  // Password Strength Checker
  List<String> passwords = ['abc123', 'securePass1', 'pass', 'mypassword'];
  for (int i = 0; i < passwords.length; i++) {
    String pass = passwords[i];
    if (pass.length < 8) {
      print("Weak Password");
    } else if (pass.length >= 8 && pass.contains(RegExp(r'[0-9]'))) {
      print("Strong Password");
    } else {
      print("Moderate Password");
    }
  }

  // Event Reminder System
  List<int> eventDays = [3, 7, 10];
  for (int i = 0; i < 10; i++) {
    if (eventDays.contains(i)) {
      print("Day ${i + 1}: Event Day");
    } else {
      print("Day ${i + 1}: No Events Today");
    }
  }
 // Fitness Tracker – Calories Burned

  int calories = 200;

  for (int i = 0; i < 7; i++) {
    print("Day ${i + 1}  Calories  Burnd $calories");
    calories += 50;
  }

  //Weekly Study Hours

  List<int> hours = [2, 3, 1, 4, 5, 0, 2];

  for (int i = 0; i < hours.length; i++) {
    print("Day ${i + 1}: You Studied  ${hours[i]} Hours");
    if (hours[i] == 0) {
      print("Day ${i + 1}: You Missed Study!");
    }
  }

  //Shopping Discount Simulator

  List<int> shoppinItem = [1500, 2200, 500, 3400, 1000];
  dynamic finalPrice;
  for (int i = 0; i < shoppinItem.length; i++) {
    if (shoppinItem[i] > 2000) {
      finalPrice = shoppinItem[i] * 0.9;
    } else {
      finalPrice = shoppinItem[i];
    }
    print(finalPrice);
  }

  // Screen Time Reminder

  List<int> screenTime = [4, 4, 6, 3, 6, 4, 4];
  for (int i = 0; i < screenTime.length; i++) {
    if (screenTime[i] > 5) {
      print("Day ${i + 1}: Reduce Screen Time!");
    } else {
      print("Day ${i + 1}: Good Job!");
    }
  }

  //Weekly Mood Tracker

  List<String> moods = [
    'Happy',
    'Tired',
    'Sad',
    'Excited',
    'Stressed',
    'Relaxed',
    'Motivated',
  ];

  for (int i = 0; i < moods.length; i++) {
    String mood = moods[i];

    if (mood == "Happy") {
      print('Keep Spreading Joy!');
    } else if (mood == "Tired") {
      print("Rest Up");
    } else if (mood == "Sad") {
      print("Better Days are Coming");
    } else {
      print("Stay Positive");
    }
  }







  // Daily Step Tracker
  List<int> steps_2 = [5000, 8500, 3000, 10000, 4000];

  int greatday = 0;
  int averageday = 0;
  int lazyday = 0;

  for (int i = 0; i < steps_2.length; i++) {
    int steps_1 = steps_2[i];

    if (steps_1 > 8000) {
      greatday++;
      print("Great Day");
    } else if (steps_1 > 4000 && steps_1 < 8000) {
      averageday++;
      print("Average Day");
    } else {
      lazyday++;
      print("Lazy Day");
    }
  }
  print("Great $greatday  , Average $averageday  , lazy $lazyday");

  // Movie Ticket Discount Calculator

  List<String> people_5 = ['adult', 'child', 'child', 'adult', 'child', 'adult'];

  int adult_1 = 200;
  int children_1 = 100;
  int adultt = 0;
  int childrenn = 0;
  dynamic totalTicketPrice;

  for (int i = 0; i < people_5.length; i++) {
    String peoples = people_5[i];
    if (peoples == "adult") {
      adult_1++;
    } else if (peoples == "child") {
      childrenn++;
    }
  }

  if (people.length > 5) {
    totalTicketPrice = ((adultt * adult_1) + (childrenn * children_1)) * 0.90;
  } else {
    totalTicketPrice = (adultt * adult_1) + (childrenn * children_1);
  }

  print(totalTicketPrice);

  //Mobile Data Usage Tracker
  double totalgb = 10.00;
  double remainingData = totalgb;

  List<double> dailyUsage_1 = [1.2, 0.9, 2.5, 1.7, 1.1];

  for (int i = 0; i < dailyUsage_1.length; i++) {
    double dailyuse = dailyUsage_1[i];
    remainingData = remainingData - dailyuse;
    print("Day ${i + 1} Usage $dailyuse Remaining Data $remainingData");
    if (remainingData < 0) {
      print("Your Data End");
    } else if (remainingData < 3) {
      print("⚠️ Warning: Low data! Less than 3GB remaining.");
    }
  }

  //Grocery Bill with Offe

  List<Map<String, dynamic>> items_5 = [
    {'name': 'Milk', 'price': 60},
    {'name': 'Bread', 'price': 40},
    {'name': 'Rice', 'price': 150},
    {'name': 'Oil', 'price': 180},
  ];
  double totalbill_5 = 0;
  double finalBill;
  for (int i = 0; i < items_5.length; i++) {
    dynamic item = items_5[i];
    dynamic itemName = item["name"];
    dynamic itemPrice = item["price"];
    print("Item $itemName - Price $itemPrice");
    totalbill_5 += itemPrice;
  }
  if (totalbill_5 > 400) {
    double discount = totalbill_5 * 0.05;
    finalBill = totalbill_5 - discount;
  } else {
    finalBill = totalbill_5;
  }
  print("Your Bill $finalBill");

  //Fitness Progress Analyzer

  List<double> weightLog_5 = [72.5, 71.8, 71.3, 70.9, 70.4];

  double totalloss = 0;
  for (int i = 1; i < weightLog_5.length; i++) {
    double change = weightLog_5[i - 1] - weightLog_5[i];
    if (change > 0) {
      print("Week $i To Week ${i + 1}: Lost ${change.toStringAsFixed(1)} Kg");
    } else if (change < 0) {
      print("Week $i To Week ${i + 1}:  ${change.toStringAsFixed(1)} kg");
    } else {
      print("Week $i to week ${i + 1} : No Change");
    }
    totalloss += change;
  }
  print(" \nTotal Weight Loss ${totalloss.toStringAsFixed(2)} kg");

  double averageLoss = totalloss / (weightLog_5.length - 1);
  print(" \nAverage Weeky Weight Loss : ${averageLoss.toStringAsFixed(2)} Kg");

  //Step Tracker Analyzer

  List<int> stepLog = [8500, 9200, 8800, 10000, 9700];
  print("\nStep Tracker Analyzer");

  for (int i = 1; i < stepLog.length; i++) {
    int changeStep = (stepLog[i] - stepLog[i - 1]).abs();
    print(" Day ${i}  To Day ${i + 1}  changed : $changeStep Steps");
  }

  // Expense Tracker

  List<double> expenses_5 = [120.5, 80.0, 99.9, 100.0, 110.0];
  double totalExpense = 0;
  double max = expenses_5[0];

  dynamic mostExpense = 1;

  for (int i = 0; i < expenses_5.length; i++) {
    print("Day ${i + 1} Expenses  : ${expenses_5[i]}");
    totalExpense += expenses_5[i];
    if (expenses_5[i] > max) {
      max = expenses_5[i];
      mostExpense = i + 1;
    }
  }
  print("Day $mostExpense Most Expense : $max Taka");
  print(
    "Total Expenses $totalExpense  And Average Expense ${(totalExpense / expenses_5.length)}",
  );

  //Study Hours Analyzer
  List<double> studyHours = [2.5, 3.0, 1.5, 4.0, 3.5];
  double totalStudy = 0;
  double min = studyHours[0];
  int minimumDays = 1;

  for (int i = 0; i < studyHours.length; i++) {
    totalStudy += studyHours[i];
    if (studyHours[i] < min) {
      min = studyHours[i];
      minimumDays = i + 1;
    }
  }
  print("Minimum Study Days $minimumDays - $min Hours");
  print("Total Study $totalStudy");

  for (int i = 0; i < studyHours.length; i++) {
    if (studyHours[i] < 3.0) {
      print("Day  ${i + 1} - ${studyHours[i]} Hours : Need More Focus");
    }
  }

  // Phone Usage Monitor
  List<double> screenTime_1 = [3.2, 4.5, 6.0, 2.8, 5.1];

  double totalScreenTime = 0;
  double maxUse = screenTime_1[0];
  int MaxDay = 1;

  for (int i = 0; i < screenTime_1.length; i++) {
    totalScreenTime += screenTime_1[i];
    if (screenTime_1[i] > maxUse) {
      maxUse = screenTime_1[i];
      MaxDay = i + 1;
    } else {}

    if (screenTime_1[i] > 5) {
      print("Day ${i + 1}  : Screen Time  ${screenTime_1[i]}  Hours");
    }
  }
  print(
    "Total Screen Time $totalScreenTime Hours And Average ${(totalScreenTime / screenTime_1.length)} Hours",
  );
  print("Day  $MaxDay :  Most  Screen Time $maxUse Hours");

  //Score Progress Checker

  List<int> scores = [65, 70, 68, 75, 80];

  int changes = 0;
  int goodScore = scores[0];
  int bestDay = 1;

  for (int i = 1; i < scores.length; i++) {
    changes = (scores[i] - scores[i - 1]);

    if (changes > 0) {
      print("Day $i To Day ${i + 1} Increase $changes Score");
    } else {
      print("Day $i To Day ${i + 1} Score Dropped $changes Score");
    }
    if (scores[i] > goodScore) {
      goodScore = scores[i];
      bestDay = i + 1;
    }
  }
  print("Day $bestDay : Best Score $goodScore");

  // Attendance Tracker (5 Days)
  print("\n Attendance Tracker");

  dynamic present = 0;
  dynamic absent = 0;

  List<Map<String, dynamic>> attendance = [
    {"day": "Mon", "present": true},
    {"day": "Tue", "present": false},
    {"day": "Wed", "present": true},
    {"day": "Thu", "present": false},
    {"day": "Fri", "present": false},
  ];

  for (int i = 0; i < attendance.length; i++) {
    dynamic attendances = attendance[i];

    if (attendances["present"] == true) {
      present++;
    } else if (attendances["present"] == false) {
      absent++;
      print("absent ${attendances["day"]}");
    }
  }
  print("Present $present Day");
  if (absent >= 3) {
    print("Too Many Absents!");
  } else {
    print("All Good");
  }

  //Daily Calorie Tracker
  print("\nDaily Calorie Tracker");

  double Totalintake = 0;
  int targetMaintain = 0;

  List<Map<String, dynamic>> calories_1 = [
    {"day": "Mon", "intake": 2100, "target": 2000},
    {"day": "Tue", "intake": 1800, "target": 2000},
    {"day": "Wed", "intake": 2000, "target": 2000},
    {"day": "Thu", "intake": 2300, "target": 2000},
    {"day": "Fri", "intake": 1900, "target": 2000},
  ];

  for (int i = 0; i < calories_1.length; i++) {
    Totalintake += calories_1[i]["intake"];
    if (calories_1[i]["intake"] > calories_1[i]["target"]) {
      print(
        "Day  ${calories_1[i]["day"]} Overate By ${calories_1[i]["intake"] - calories_1[i]["target"]} calories",
      );
    } else if (calories_1[i]["intake"] == calories_1[i]["target"]) {
      targetMaintain++;
    }
  }
  print("Total Intake : $Totalintake");
  print("Target Maintain : $targetMaintain");

  //Daily Savings Checker

  print("\nDaily Savings Checker");

  int goalFill = 0;
  dynamic totalSavesAmmount = 0;

  List<Map<String, dynamic>> savings = [
    {"day": "Mon", "saved": 100, "goal": 150},
    {"day": "Tue", "saved": 160, "goal": 150},
    {"day": "Wed", "saved": 120, "goal": 150},
    {"day": "Thu", "saved": 150, "goal": 150},
    {"day": "Fri", "saved": 180, "goal": 150},
  ];

  for (int i = 0; i < savings.length; i++) {
    totalSavesAmmount += savings[i]["saved"];
    if (savings[i]["saved"] >= savings[i]["goal"]) {
      goalFill++;
    } else if (savings[i]["saved"] < savings[i]["goal"]) {
      print(
        " Miss Day ${savings[i]["day"]} :  ${savings[i]["goal"] - savings[i]["saved"]} Need",
      );
    }
  }
  print("Goal Done $goalFill Days");
  print("Total Saved Ammount $totalSavesAmmount");

  //Advanced Attendance Checker

  print("\nAdvanced Attendance Checker");

  int present_ = 0;
  int absent_ = 0;
  String warning = "  ";

  List<Map<String, dynamic>> aattendance = [
    {"day": "Mon", "present": true},
    {"day": "Tue", "present": false},
    {"day": "Wed", "present": true},
    {"day": "Thu", "present": false},
    {"day": "Fri", "present": false},
    {"day": "Sat", "present": true},
  ];

  for (int i = 0; i < aattendance.length; i++) {
    if (aattendance[i]["present"] == true) {
      present_++;
    } else {
      absent_++;
      print("Day ${aattendance[i]["day"]} Absent");

      if (aattendance[i]["present"] == false &&
          aattendance[i + 1]["present"] == false) {
        warning =
            "Consecutuve Absent On ${aattendance[i]["day"]} And ${aattendance[i + 1]["day"]}";
      }
    }
  }
  print("Present $present_ Days");
  print("Absent $absent_ Days");
  if (absent_ > 3) {
    print("Too Many Absents!");
  }
  print(warning);

  print("\nAdvanced Savings Tracker Challenge");

  List<Map<String, dynamic>> savings_2 = [
    {"day": "Mon", "saved": 100, "goal": 150},
    {"day": "Tue", "saved": 160, "goal": 150},
    {"day": "Wed", "saved": 120, "goal": 150},
    {"day": "Thu", "saved": 150, "goal": 150},
    {"day": "Fri", "saved": 180, "goal": 150},
    {"day": "Sat", "saved": 90, "goal": 150},
  ];
  dynamic totalSaving = 0;
  dynamic totalAchieve = 0;
  dynamic TotalGoal = 0;
  dynamic maxSaved = savings_2[0]["saved"];
  dynamic bestSavedDay = savings_2[0]["day"];

  for (var saving in savings_2) {
    totalSaving += saving["saved"]; // total saving
    TotalGoal += saving["goal"];
    if (saving["goal"] > saving["saved"]) {
      print(" ${saving["day"]} Day Miss Your Goal  ");
    }
    if (saving["goal"] <= saving["saved"]) {
      totalAchieve++;
    }
    if (saving["saved"] > maxSaved) {
      maxSaved = saving["saved"];
      bestSavedDay = saving["day"];
    }
    if (saving["saved"] == saving["goal"]) {
      print("Exact Saving Match ${saving["day"]} Day");
    }
  }
  print("Total Saving ${totalSaving} Taka");
  print("Total Goal Achieve $totalAchieve Day");
  print("Highest Save $maxSaved Taka $bestSavedDay Day");
  if (totalSaving >= TotalGoal) {
    print("Extra Saving: ${totalSaving - TotalGoal} Taka");
  } else {
    print("Short Saving: ${TotalGoal - totalSaving} Taka");
  }

  //Weekly Productivity Evaluator
  print("\nWeekly Productivity Evaluator");

  List<Map<String, dynamic>> productivity = [
    {"day": "Mon", "tasksDone": 5, "target": 5},
    {"day": "Tue", "tasksDone": 6, "target": 5},
    {"day": "Wed", "tasksDone": 7, "target": 5},
    {"day": "Thu", "tasksDone": 6, "target": 5},
    {"day": "Fri", "tasksDone": 6, "target": 5},
    {"day": "Sat", "tasksDone": 6, "target": 5},
  ];

  dynamic totalTask = 0;
  int consecutiveFail = 0;
  int DayMiss = 0;

  for (var task in productivity) {
    totalTask += task["tasksDone"];

    if (task["target"] > task["tasksDone"]) {
      print('Minimum Task Not Complete ${task["day"]} Day');
      consecutiveFail++;
      DayMiss++;

      if (consecutiveFail == 3) {
        print(" 3 Consecutive Low-Performance Days!");
      }
    } else {
      consecutiveFail = 0;
      if (task["target"] < task["tasksDone"]) {
        print("${task["day"]} Bonus Day");
      }
    }
  }
  print("Total Task $totalTask");
  if (DayMiss == 0) {
    print("Parfect Week");
  }

  //Weekly Expense Tracker
  print("\nWeekly Expense Tracker");

  List<Map<String, dynamic>> expenses_2 = [
    {"day": "Mon", "spent": 100, "goal": 150},
    {"day": "Tue", "spent": 180, "goal": 150},
    {"day": "Wed", "spent": 120, "goal": 150},
    {"day": "Thu", "spent": 140, "goal": 150},
    {"day": "Fri", "spent": 160, "goal": 150},
    {"day": "Sat", "spent": 200, "goal": 150},
  ];

  dynamic totalSpent = 0;
  dynamic totalGoal = 0;

  for (var dayData in expenses_2) {
    totalSpent += dayData['spent'];
    totalGoal += dayData['goal'];

    if (dayData['goal'] < dayData['spent']) {
      print(
        "${dayData["day"]} Over Budget Day - Extra ${dayData['spent'] - dayData['goal']} ",
      );
    }
    if (dayData['goal'] > dayData['spent']) {
      print(
        "${dayData["day"]} Under Budget Day - Save ${dayData['goal'] - dayData['spent']} ",
      );
    }
  }
  print("\n🔎 Total Spent: $totalSpent BDT");
  print("🎯 Total Budget Goal: $totalGoal BDT");

  if (totalSpent > totalGoal) {
    print("Warning: Exceeded Budget!");
  } else if (totalGoal > totalGoal) {
    print("Warning: Under Budget!");
  } else {
    print("🎉 Perfect Budgeting! Spent exactly as planned");
  }

  //Task Completion Performance Tracker

  print('\nTask Completion Performance Tracker');

  List<Map<String, dynamic>> tasks = [
    {"day": "Mon", "done": 5, "target": 5},
    {"day": "Tue", "done": 4, "target": 5},
    {"day": "Wed", "done": 6, "target": 5},
    {"day": "Thu", "done": 3, "target": 5},
    {"day": "Fri", "done": 7, "target": 5},
    {"day": "Sat", "done": 4, "target": 5},
    {"day": "Sun", "done": 5, "target": 5},
  ];

  int warningCons = 0;
  dynamic totalDone = 0;
  dynamic missed = 0;
  dynamic target = 0;

  for (var task in tasks) {
    totalDone += task['done'];

    if (task['target'] > task['done']) {
      missed++;
      warningCons++;
      print("${task['day']} Not Complete");
      if (warningCons == 3) {
        print(' Warning: 3 Consecutive Low-Performance Days!');
      }
    } else {
      warningCons = 0;
      if (task['target'] < task['done']) {
        target++;
        print("${task['day']} Bonus Day");
      }
    }
  }
  print(" Total Done $totalDone Missed $missed Target $target");

  //Monthly Attendance Analyzer
  print("\n Monthly Attendance Analyzer");

  List<Map<String, dynamic>> attendance_2 = [
    {"name": "Sakib", "daysPresent": 22, "totalDays": 26},
    {"name": "Rana", "daysPresent": 18, "totalDays": 26},
    {"name": "Jui", "daysPresent": 25, "totalDays": 26},
    {"name": "Nadim", "daysPresent": 20, "totalDays": 26},
  ];

  for (var attendance in attendance_2) {
    double PercentageAttendance =
        attendance["daysPresent"] / attendance["totalDays"] * 100;

    if (PercentageAttendance >= 90) {
      print(
        "${attendance["name"]} ${PercentageAttendance.toStringAsFixed(2)}% Excellent Attendance ",
      );
    } else if (PercentageAttendance < 75) {
      print(
        "${attendance["name"]} ${PercentageAttendance.toStringAsFixed(2)}% Needs Improvement ",
      );
    }

    print("${attendance["name"]} ${PercentageAttendance.toStringAsFixed(2)}% ");
  }

  //Weekly Sales Leaderboard

  print("\n Weekly Sales Leaderboard");

  List<Map<String, dynamic>> sales = [
    {"day": "Mon", "sales": 1200},
    {"day": "Tue", "sales": 850},
    {"day": "Wed", "sales": 900},
    {"day": "Thu", "sales": 1500},
    {"day": "Fri", "sales": 1800},
    {"day": "Sat", "sales": 700},
  ];
  dynamic weeklyTotal = 0;
  dynamic topSales = sales[0]["sales"];
  dynamic topsalesDay = sales[0]["day"];
  dynamic MinSales = sales[0]["sales"];
  dynamic minsalesDay = sales[0]["day"];

  for (var sale in sales) {
    weeklyTotal += sale["sales"];
    if (topSales < sale["sales"]) {
      topSales = sale["sales"];
      topsalesDay = sale["day"];
    } else if (sale["sales"] < MinSales) {
      MinSales = sale["sales"];
      minsalesDay = sale["day"];
    }
  }
  print("Top Sales ${topsalesDay} : $topSales Taka");
  print("Min Sales ${minsalesDay} : $MinSales Taka");
  print("Weekly Total Sales = $weeklyTotal Taka");

  //Fitness Tracker Analyzer

  print("\n Fitness Tracker Analyzer");

  List<Map<String, dynamic>> fitness = [
    {"day": "Mon", "steps": 4000, "goal": 7000},
    {"day": "Tue", "steps": 7200, "goal": 7000},
    {"day": "Wed", "steps": 8000, "goal": 7000},
    {"day": "Thu", "steps": 3000, "goal": 7000},
    {"day": "Fri", "steps": 10000, "goal": 7000},
    {"day": "Sat", "steps": 6800, "goal": 7000},
    {"day": "Sun", "steps": 5000, "goal": 7000},
  ];

  int goalMiss = 0;
  dynamic weeklyTotalSteps = 0;
  int totalgoalAchieved = 0;

  for (var fitnes in fitness) {
    weeklyTotalSteps += fitnes['steps'];
    if (fitnes["goal"] <= fitnes["steps"]) {
      print("${fitnes['day']} Goal Achieved");
      totalgoalAchieved++;
      goalMiss = 0;
    } else {
      goalMiss++;
      if (goalMiss == 2) {
        print("Alert: $goalMiss-Day Drop!");
      }
    }
  }
  print("Weekly total steps $weeklyTotalSteps");
  print("$totalgoalAchieved Day  Achieved Goal");

  //Daily Bank Transaction Analyzer

  print("\nDaily Bank Transaction Analyzer");

  List<Map<String, dynamic>> transactions = [
    {"day": "Mon", "deposit": 5000, "withdraw": 2000},
    {"day": "Tue", "deposit": 3000, "withdraw": 3500},
    {"day": "Wed", "deposit": 0, "withdraw": 4000},
    {"day": "Thu", "deposit": 1000, "withdraw": 1500},
    {"day": "Fri", "deposit": 6000, "withdraw": 1000},
    {"day": "Sat", "deposit": 0, "withdraw": 3000},
    {"day": "Sun", "deposit": 2000, "withdraw": 1000},
  ];

  dynamic balance = 0;
  int nagativeDay = 0;

  dynamic highBalance = 0;
  dynamic highBalanceDay = 0;

  dynamic totalDeposit = 0;
  dynamic totalWithdrow = 0;

  int consecutiveDays = 0;
  int previwsDaysBalance = 0;

  for (var trs in transactions) {
    balance += trs['deposit'];
    balance -= trs['withdraw'];

    totalDeposit += trs['deposit'];
    totalWithdrow += trs['withdraw'];

    if (balance < 0) {
      nagativeDay++;
    }
    if (highBalance < balance) {
      highBalance = balance;
      highBalanceDay = trs['day'];
    }
    if (balance < previwsDaysBalance) {
      consecutiveDays++;
      if (consecutiveDays == 3) {
        print("Warning $consecutiveDays Days Decrese Balance");
      }
    } else {
      consecutiveDays = 0;
    }

    previwsDaysBalance = balance;
  }
  print("Nagative Day $nagativeDay");
  print("High  Balance $highBalanceDay $highBalance Taka");
  print("Total Deposit This Week $totalDeposit Taka");
  print("Total Withdraw This Wekk $totalWithdrow Taka");

  //Grocery Expense Tracker

  print("\nGrocery Expense Tracker");

  List<Map<String, dynamic>> expenses_3 = [
    {"day": "Mon", "amount": 850},
    {"day": "Tue", "amount": 1200},
    {"day": "Wed", "amount": 950},
    {"day": "Thu", "amount": 1100},
    {"day": "Fri", "amount": 670},
    {"day": "Sat", "amount": 1340},
    {"day": "Sun", "amount": 720},
  ];

  dynamic highExpense = expenses_3[0]["amount"];
  dynamic highExpenseDay = expenses_3[0]["day"];

  dynamic totalWeeklyExpense = 0;

  dynamic consday = 0;
  dynamic previwsDay = 0;

  for (var exp in expenses_3) {
    totalWeeklyExpense += exp["amount"];

    if (highExpense < exp["amount"]) {
      highExpense = exp['amount'];
      highExpenseDay = exp['day'];
    }
    if (exp["amount"] > 1000) {
      print(" ${exp["day"]} Day Expense Over 1000 Taka ${exp["amount"]} Taka");
    }
    if (previwsDay < exp['amount']) {
      consday++;
      if (consday == 3) {
        print('⚠️ Spending Habit Aler');
      }
    } else {
      consday = 1;
    }

    previwsDay = exp['amount'];
  }

  print('Hight Expense $highExpenseDay Day $highExpense  Taka');
  print("Total Expense  $totalWeeklyExpense");

  //Temperature Tracker
  print("\nTemperature Tracker");

  List<Map<String, dynamic>> temperatures = [
    {"day": "Mon", "temperature": 28},
    {"day": "Tue", "temperature": 32},
    {"day": "Wed", "temperature": 30},
    {"day": "Thu", "temperature": 29},
    {"day": "Fri", "temperature": 31},
    {"day": "Sat", "temperature": 25},
    {"day": "Sun", "temperature": 28},
  ];

  dynamic highTemDay = temperatures[0]['temperature'];
  dynamic highDay = temperatures[0]["day"];
  dynamic lowTemDay = temperatures[0]['temperature'];
  dynamic lowDay = temperatures[0]["day"];

  dynamic totalTemperatureSum = 0;

  int coldStreak = 0;
  int previewsDay = temperatures[0]["temperature"];

  for (var tem in temperatures) {
    dynamic day = tem["day"];
    dynamic eachTem = tem['temperature'];

    totalTemperatureSum += eachTem;

    if (highTemDay < eachTem) {
      highTemDay = eachTem;
      highDay = day;
    }
    if (lowTemDay > eachTem) {
      lowTemDay = eachTem;
      lowDay = day;
    }
    if (eachTem > 30) {
      print("More Then 30 Degree $day Day $eachTem Degree");
    }
    if (previewsDay > eachTem) {
      coldStreak++;
      if (coldStreak == 3) {
        print("⚠️ Alert: Cold Streak");
      }
    } else {
      coldStreak = 0;
    }
    previewsDay = eachTem;
  }

  print("High Temperatue $highDay Day  $highTemDay Degree");
  print("Low Temperature $lowDay Day $lowTemDay Degree");
  print("Total Temperatur Sum = $totalTemperatureSum");



  
}
