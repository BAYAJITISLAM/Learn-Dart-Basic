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

  
}
