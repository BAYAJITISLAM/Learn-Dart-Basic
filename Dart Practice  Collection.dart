import 'dart:io';

void main() {
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

  // Name Repeater
  String inputName = "Bayazid";
  for (int i = 0; i < 5; i++) {
    stdout.write(" $inputName");
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
    print("Month ${i + 1}: \$total");
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
    print("Day ${i + 1}: \$calories Calories");
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
}
