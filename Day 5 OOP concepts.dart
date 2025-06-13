//Student Record System

class Student {
  String name;
  int id;
  List<int> marks;

  Student(this.name, this.id, this.marks);

  double getAverage() {
    int subject = marks.length;
    int totalMarks = 0;

    for (var mark in marks) {
      totalMarks += mark;
    }
    return totalMarks / subject;
  }
}

//Student Management System (Advanced)

class Students {
  String name;
  int id;
  List<int> marks = [];

  Students(this.name, this.id, this.marks);

  double getAverage() {
    return marks.reduce((a, b) => a + b) / marks.length;
  }

  getGrade() {
    if (getAverage() >= 90) return "A+";
    if (getAverage() >= 80) return "B";
    if (getAverage() >= 70) return "C";
    if (getAverage() >= 60) return "D";
    if (getAverage() < 60) return "F";
  }
}

class StudentManager {
  List<Students> studentList = [];

  addStudent(Students student) {
    studentList.add(student);
  }

  printAllStudent() {
    for (var student in studentList) {
      print(
        "Student : ${student.name} (ID: ${student.id}) -  Avg: ${student.getAverage().toStringAsFixed(2)}- Grade:  ${student.getGrade()}",
      );
    }
  }

  getTopStudent() {
    studentList.sort((a, b) => b.getAverage().compareTo(a.getAverage()));

    final top = studentList.first;
    print(
      "\n🏆 Top Student: ${top.name} (ID: ${top.id}) - Avg: ${top.getAverage()} - Grade: ${top.getGrade()}",
    );
  }

  getPassFailCount() {
    int pass = 0;
    int fail = 0;

    for (var student in studentList) {
      if (student.getAverage() >= 60) {
        pass++;
      } else {
        fail++;
      }
    }
    print("\nPass:  $pass");
    print("Fail : $fail");
  }
}

//Banking System – Account Management

class BankAccount {
  String name;
  double _balance = 0;

  BankAccount(this.name);

  deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      return true;
    }
    return false;
  }

  wtihdrawn(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      return true;
    }
    return false;
  }

  transfer(BankAccount reciveAccount, amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      reciveAccount.deposit(amount);
      return true;
    }
    return false;
  }

  showBalance() {
    print("\n Name $name Balance $_balance");
  }
}

class Bank {
  List<BankAccount> accounts = [];

  addAccount(BankAccount account) {
    accounts.add(account);
    print("Bank Account Created: ${account.name}");
  }

  BankAccount? findAccount(String name) {
    for (var account in accounts) {
      if (account.name == name) {
        return account;
      }
    }
    return null;
  }

  deposit(BankAccount account, double amount) {
    if (account.deposit(amount)) {
      print("$amount Deposit - ${account.name}");
    } else {
      print("Invalid Try Again");
    }
  }

  withdraw(BankAccount account, double amount) {
    if (account.wtihdrawn(amount)) {
      print("$amount withdraw - ${account.name}");
      return;
    } else {
      print("Insuficent Balance");
    }
  }

  transfer(BankAccount form, BankAccount to, double amount) {
    if (form.transfer(to, amount)) {
      print("${form.name} Send $amount Taka To ${to.name}");
    } else {
      print("Please Check Your Sender Deteail");
    }
  }

  showAllAcccount() {
    print("\n📋 All Accounts:");
    for (var account in accounts) {
      print("-${account.name}: ${account._balance}");
    }
  }
}

//Library Book System

class Book {
  String title;
  String author;
  bool isBorrowed = false;

  Book(this.title, this.author);
}

class Library {
  List<Book> books = [];

  addBook(Book book) {
    books.add(book);
    print("Book Added :${book.title}");
  }

  borrow(String name, String book) {
    for (var bookk in books) {
      if (bookk.title == book && bookk.isBorrowed == false) {
        print("Name : $name -Borrow  $book");
        bookk.isBorrowed = true;
      }
    }
  }

  returnBooks(String name, String book) {
    for (var bookk in books) {
      if (bookk.title == book) {
        bookk.isBorrowed = false;
        print("Name $name Return Book  $book");
      }
    }
  }

  availabeBook() {
    print("\nAvailabe Books");
    for (var book in books) {
      if (book.isBorrowed == false) {
        print("-${book.title}");
      }
    }
  }
}

void main() {
  print("\nStudent Record System\n");

  List<Student> student = [
    Student('Alice', 101, [90, 85, 80]),
    Student('Bob', 102, [70, 75, 72]),
    Student('Charlie', 103, [88, 92, 90]),
    Student('David', 104, [60, 65, 70]),
    Student('Eve', 105, [95, 93, 97]),
  ];

  student.sort((a, b) => b.getAverage().compareTo(a.getAverage()));

  for (var students in student) {
    print(
      "-Student: ${students.name} (ID: ${students.id}) - Avg: ${students.getAverage().toStringAsFixed(2)}",
    );
  }

  print("\nTop Student");
  final top = student.first;
  print("Top Student ${top.name} - ${top.getAverage()}");

  print("\nStudent Management System (Advanced)\n");

  StudentManager mySchoolStudent = StudentManager();
  mySchoolStudent.addStudent(Students("Bayajit Islam", 345, [77, 75, 76]));
  mySchoolStudent.addStudent(Students("Riad Islam", 342, [55, 66, 40]));
  mySchoolStudent.addStudent(Students("Major Islam", 745, [77, 54, 76]));
  mySchoolStudent.addStudent(Students("Rithy Islam", 123, [43, 98, 55]));
  mySchoolStudent.addStudent(Students("Riya Islam", 411, [66, 66, 59]));

  mySchoolStudent.printAllStudent();
  mySchoolStudent.getTopStudent();
  mySchoolStudent.getPassFailCount();

  print("\nBanking System – Account Management");

  Bank bank = Bank();

  var acc1 = BankAccount("Bayajit");
  var acc2 = BankAccount("Major");
  bank.addAccount(acc2);
  bank.addAccount(acc1);

  bank.deposit(acc2, 2000);
  bank.deposit(acc1, 1000);
  bank.withdraw(acc2, 999);
  bank.withdraw(acc2, 2000);
  bank.transfer(acc1, acc2, 100);

  bank.showAllAcccount();

  print("\nLibrary Book System");

  Library myLibrary = Library();
  myLibrary.addBook(Book("My Princec", "Major Dalim"));
  myLibrary.addBook(Book("My Boy", "Major Dalim"));
  myLibrary.addBook(Book("My GirlFrieand", "Major Dalim"));
  myLibrary.addBook(Book("My Cat", "Major Dalim"));
  myLibrary.addBook(Book("My Birds", "Major Dalim"));

  myLibrary.availabeBook();

  myLibrary.borrow("Riad", "My Princec");
  myLibrary.borrow("Bayajit", "My Boy");
  myLibrary.returnBooks('Bayajit', "My Boy");

  myLibrary.availabeBook();
}
