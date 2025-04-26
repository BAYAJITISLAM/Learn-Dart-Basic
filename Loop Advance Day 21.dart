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

  //Palindrome Checker




}
