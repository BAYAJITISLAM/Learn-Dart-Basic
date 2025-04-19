
void main() {
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

// Salary Progress Tracker



}
