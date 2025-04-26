

void main() {
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

  List<int> steps = [3000, 7600, 4500, 10000, 8700, 1200, 9500];

  int great = 0;
  int okay = 0;
  int tryHarder = 0;

  for (int i = 0; i < steps.length; i++) {
    int step = steps[i];

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

  List<int> salaries = [30000, 45000, 52000, 70000, 100000];
  double afterTaxSalari = 0;
  double totalTax = 0;
  double tax = 0;
  double netselari = 0;
  for (int i = 0; i < salaries.length; i++) {
    int salari = salaries[i];

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
    totalTax += tax;
    netselari += afterTaxSalari;
  }
  print("After Tax Five Month Net Selaros : $netselari");
  print("Five Month Tax $totalTax");
}




