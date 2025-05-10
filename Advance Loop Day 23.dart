void main() {
  // Daily Step Tracker
  List<int> steps = [5000, 8500, 3000, 10000, 4000];

  int greatday = 0;
  int averageday = 0;
  int lazyday = 0;

  for (int i = 0; i < steps.length; i++) {
    int step = steps[i];

    if (step > 8000) {
      greatday++;
      print("Great Day");
    } else if (step > 4000 && step < 8000) {
      averageday++;
      print("Average Day");
    } else {
      lazyday++;
      print("Lazy Day");
    }
  }
  print("Great $greatday  , Average $averageday  , lazy $lazyday");

  // Movie Ticket Discount Calculator

  List<String> people = ['adult', 'child', 'child', 'adult', 'child', 'adult'];

  int adult = 200;
  int children = 100;
  int adultt = 0;
  int childrenn = 0;
  dynamic totalTicketPrice;

  for (int i = 0; i < people.length; i++) {
    String peoples = people[i];
    if (peoples == "adult") {
      adultt++;
    } else if (peoples == "child") {
      childrenn++;
    }
  }

  if (people.length > 5) {
    totalTicketPrice = ((adultt * adult) + (childrenn * children)) * 0.90;
  } else {
    totalTicketPrice = (adultt * adult) + (childrenn * children);
  }

  print(totalTicketPrice);

  //Mobile Data Usage Tracker
  double totalgb = 10.00;
  double remainingData = totalgb;

  List<double> dailyUsage = [1.2, 0.9, 2.5, 1.7, 1.1];

  for (int i = 0; i < dailyUsage.length; i++) {
    double dailyuse = dailyUsage[i];
    remainingData = remainingData - dailyuse;
    print("Day ${i + 1} Usage $dailyuse Remaining Data $remainingData");
    if (remainingData < 0) {
      print("Your Data End");
    } else if (remainingData < 3) {
      print("⚠️ Warning: Low data! Less than 3GB remaining.");
    }
  }

  //Grocery Bill with Offe

  List<Map<String, dynamic>> items = [
    {'name': 'Milk', 'price': 60},
    {'name': 'Bread', 'price': 40},
    {'name': 'Rice', 'price': 150},
    {'name': 'Oil', 'price': 180},
  ];
  double totalbill = 0;
  double finalBill;
  for (int i = 0; i < items.length; i++) {
    dynamic item = items[i];
    dynamic itemName = item["name"];
    dynamic itemPrice = item["price"];
    print("Item $itemName - Price $itemPrice");
    totalbill += itemPrice;
  }
  if (totalbill > 400) {
    double discount = totalbill * 0.05;
    finalBill = totalbill - discount;
  } else {
    finalBill = totalbill;
  }
  print("Your Bill $finalBill");

  //Fitness Progress Analyzer

  List<double> weightLog = [72.5, 71.8, 71.3, 70.9, 70.4];

  double totalloss = 0;
  for (int i = 1; i < weightLog.length; i++) {
    double change = weightLog[i - 1] - weightLog[i];
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

  double averageLoss = totalloss / (weightLog.length - 1);
  print(" \nAverage Weeky Weight Loss : ${averageLoss.toStringAsFixed(2)} Kg");

  //Step Tracker Analyzer

  List<int> stepLog = [8500, 9200, 8800, 10000, 9700];
  print("\nStep Tracker Analyzer");

  for (int i = 1; i < stepLog.length; i++) {
    int changeStep = (stepLog[i] - stepLog[i - 1]).abs();
    print(" Day ${i}  To Day ${i + 1}  changed : $changeStep Steps");
  }

  // Expense Tracker

  List<double> expenses = [120.5, 80.0, 99.9, 100.0, 110.0];
  double totalExpense = 0;
  double max = expenses[0];

  dynamic mostExpense = 1;

  for (int i = 0; i < expenses.length; i++) {
    print("Day ${i + 1} Expenses  : ${expenses[i]}");
    totalExpense += expenses[i];
    if (expenses[i] > max) {
      max = expenses[i];
      mostExpense = i + 1;
    }
  }
  print("Day $mostExpense Most Expense : $max Taka");
  print(
    "Total Expenses $totalExpense  And Average Expense ${(totalExpense / expenses.length)}",
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
  List<double> screenTime = [3.2, 4.5, 6.0, 2.8, 5.1];

  double totalScreenTime = 0;
  double maxUse = screenTime[0];
  int MaxDay = 1;

  for (int i = 0; i < screenTime.length; i++) {
    totalScreenTime += screenTime[i];
    if (screenTime[i] > maxUse) {
      maxUse = screenTime[i];
      MaxDay = i + 1;
    } else {}

    if (screenTime[i] > 5) {
      print("Day ${i + 1}  : Screen Time  ${screenTime[i]}  Hours");
    }
  }
  print(
    "Total Screen Time $totalScreenTime Hours And Average ${(totalScreenTime / screenTime.length)} Hours",
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

  List<Map<String, dynamic>> calories = [
    {"day": "Mon", "intake": 2100, "target": 2000},
    {"day": "Tue", "intake": 1800, "target": 2000},
    {"day": "Wed", "intake": 2000, "target": 2000},
    {"day": "Thu", "intake": 2300, "target": 2000},
    {"day": "Fri", "intake": 1900, "target": 2000},
  ];

  for (int i = 0; i < calories.length; i++) {
    Totalintake += calories[i]["intake"];
    if (calories[i]["intake"] > calories[i]["target"]) {
      print(
        "Day  ${calories[i]["day"]} Overate By ${calories[i]["intake"] - calories[i]["target"]} calories",
      );
    } else if (calories[i]["intake"] == calories[i]["target"]) {
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
}
