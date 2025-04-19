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
}
