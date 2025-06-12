// basic class

import 'dart:math';

extension FirstWhereOrNullExtension<E> on List<E> {
  E? firstWhereOrNull(bool Function(E) test) {
    for (var element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}

class test {
  test(int a, int b) {
    int sum = a + b;
    print("\nTotal $a +  $b = $sum");
  }
  divison() {
    int a = 20;
    int b = 20;
    double divison = a / b;
    print("\nDivison $a / $b = $divison");
  }
}

// basic problem solve

class student {
  String name;
  int classLevel;
  int roll;

  student(this.name, this.classLevel, this.roll);

  void showDetails() {
    print("Student Name : $name");
    print("Student Class : $classLevel");
    print("Student Roll : $roll");
  }
}

//Bank Account Management System

class BankAccountClass {
  String accountHolder = "Bayajit Islam Badhon";
  int accountNumber = 778349;
  double balance = 0;

  deposit(double amount) {
    balance += amount;
    print("Deposit : ${amount.toStringAsFixed(0)}");
  }

  wihtdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("WithDrawn : ${amount.toStringAsFixed(0)}");
    }
  }

  checkBalance() {
    print("Current Balance : ${balance.toStringAsFixed(0)}");
  }

  accountDetails() {
    print("Account Holder $accountHolder");
    print("Account Number $accountNumber");
    deposit(4000);
    wihtdraw(2000);
    checkBalance();
  }
}

//Student Pass/Fail Checker (Using Multiple Objects)

class StudentPassChecker {
  String name;
  int classLevel;
  int marks;

  StudentPassChecker(this.name, this.classLevel, this.marks);

  void showResult() {
    if (marks >= 33) {
      print("Name $name : Pass ✔");
    } else {
      print("Name $name Fail ❌");
    }
  }
}

//Employee Salary Bonus System

class Employee {
  String name;
  String position;
  int salary;

  Employee(this.name, this.position, this.salary);

  void calculateBonus() {
    if (salary > 20000) {
      double bonus = salary * 0.10;
      double totalSalary = salary + bonus;

      print("$name  ($position)");
      print("Bonus : ${bonus.toStringAsFixed(0)}");
      print("Total : ${totalSalary.toStringAsFixed(0)}");
      print("-----------------------------------");
    } else {
      double bonus = salary * 0.05;
      double totalSalary = salary + bonus;

      print("$name  ($position)");
      print("Bonus : ${bonus.toStringAsFixed(0)}");
      print("Total : ${totalSalary.toStringAsFixed(0)}");
      print("-----------------------------------");
    }
  }
}

//✅ Next-Level OOP Concepts for You:
// Encapsulation
//Encapsulated ATM Machine 💳

class ATMmachine {
  String username;
  int accountNumber;
  double _balance = 0;

  ATMmachine(this.username, this.accountNumber, [this._balance = 0]);

  double get balance => _balance;

  deposit(double amount) {
    if (amount > 0) _balance += amount;
    print("Deposit :$amount");
    print("After Deposit Your  Balance :${balance.toStringAsFixed(2)}");
  }

  withdraw(double amount) {
    if (_balance >= amount) {
      _balance -= amount;
      print("WithDrawn : $amount");
      print("Left Balance : ${balance.toStringAsFixed(2)}");
    } else {
      print("Failed: Insufficient Balance");
    }
  }

  void accountDetailse() {
    print("Name :$username");
    print("Account : $accountNumber");
    print("Current Balance  :${balance.toStringAsFixed(2)}");
    print("------------------------");
  }
}

//Simple Library Management System (with OOP)

class Book {
  String title;
  String author;
  int stock;

  Book(this.title, this.author, this.stock);

  showDetails() {
    print("$title by $author - $stock Left");
  }
}

class Library {
  List<Book> bookList = [];

  addBook(Book book) {
    bookList.add(book);
    print("Book Added : ${book.title}");
  }

  bool borrowBook(String bookTitle) {
    for (var book in bookList) {
      if (book.title.toLowerCase() == bookTitle.toLowerCase()) {
        if (book.stock > 0) {
          book.stock--;
          return true;
        } else {
          print("❌ Failed: Book out of stock.");
          print("-------------------");
        }
      }
    }
    return false;
  }

  showAllBooks() {
    print("\n📖 Library Stock:");
    for (var book in bookList) {
      print("-${book.title} : ${book.stock} Left");
    }
    print("----------------------------");
  }
}

class User {
  String name;
  List<String> borrowList = [];

  User(this.name);

  borrow(String bookTitle, Library library) {
    print(
      "$name is trying to borrow  ${bookTitle.split(' ').map((w) => w[0].toUpperCase() + w.substring(1).toLowerCase()).join(' ')}",
    );
    bool succes = library.borrowBook(bookTitle);
    if (succes) {
      borrowList.add(
        bookTitle
            .split(' ')
            .map((w) => w[0].toUpperCase() + w.substring(1).toLowerCase())
            .join(' '),
      );
      print("✅ Borrowed successfully!");
      print("--------------------");
    }
  }

  showAllBorrow() {
    print("\n$name borrowed :");

    for (var borrow in borrowList) {
      if (borrow.isEmpty) {
        print("- No books borrowed yet.");
      } else {
        print("-$borrow");
      }
    }
  }
}

//Simple Shop Management System

class Product {
  String name;
  double price;
  int stock;

  Product(this.name, this.price, this.stock);

  showDetails() {
    print("Product Name :$name");
    print("Product Price  :$price");
    print("Product Stock :$stock");
    print("-----------------");
  }
}

class Shop {
  List<Product> productList = [];

  addProduct(Product product) {
    productList.add(product);
    print("📦 Product added: ${product.name}");
  }

  bool placeOrder(String productName, int quantity) {
    for (var pro in productList) {
      if (pro.name == productName && quantity <= pro.stock) {
        pro.stock -= quantity;
        return true;
      }
    }
    return false;
  }

  showInventory() {
    print("\n🏪 Shop Inventory:");
    for (var product in productList) {
      print("-${product.name}: ${product.stock}  Left");
    }
    print("--------------");
  }
}

class Customer {
  String name;
  List<Map<String, dynamic>> orderItems = [];

  Customer(this.name);

  order(String productName, int quantity, Shop shop) {
    print("\n- $name  is ordering $quantity of $productName");
    bool succes = shop.placeOrder(productName, quantity);
    if (succes) {
      orderItems.add({"product": productName, "quantity": quantity});
      print("✅ Order successful!");
    } else {
      print("❌ Failed: Not enough stock.");
    }
  }

  showOrder() {
    print("\n-$name Ordered");
    for (var product in orderItems) {
      print("-${product['product']} - x${product['quantity']}");
    }
  }
}

//Simple Hospital Management System (with OOP)

class Doctore {
  String name;
  String specialty;
  int availableSlots;

  Doctore(this.name, this.specialty, this.availableSlots);

  showDetails() {
    print("\n🏥 Hospital Doctors:");
    print("-$name : $availableSlots  slot available");
    print("------------");
  }
}

class Hospital {
  List<Doctore> doctoreList = [];

  addDoctore(Doctore doctore) {
    doctoreList.add(doctore);
    print("👨‍⚕️ Doctor added:${doctore.name} (${doctore.specialty})");
    print("--");
  }

  bookAppointment(String doctoreName, int slots) {
    for (var doctore in doctoreList) {
      if (doctoreName == doctore.name) {
        if (slots <= doctore.availableSlots) {
          doctore.availableSlots -= slots;
          return true;
        } else {
          print("❌ Failed: Not enough slots with $doctoreName.");
          return false;
        }
      }
    }
    print("❌ Failed: Doctor not found.");
    return false;
  }

  showAllDoctore() {
    print("\n🏥 Hospital Doctors:");
    for (var doctore in doctoreList) {
      doctore.showDetails();
    }
    print("-----------------");
  }
}

class Patient {
  String name;
  List<Map<String, dynamic>> appointments = [];

  Patient(this.name);

  book(String doctoreName, int slots, Hospital hospital) {
    print("\n-$name  is booking $slots with $doctoreName");
    bool succes = hospital.bookAppointment(doctoreName, slots);
    if (succes) {
      appointments.add({"name": doctoreName, "slot": slots});
      print("✅ Appointment successful!");
    }
  }

  showAppointments() {
    print("\n$name's Appointments");
    for (var appintment in appointments) {
      print("-${appintment['name']}- ${appintment['slot']} slot(s)");
    }
  }
}

//Vehicle Booking System

class Vehicle {
  String name;
  int stock;

  Vehicle(this.name, this.stock);

  showVehicle() {
    print("-$name : $stock  left");
  }
}

class VehicleStore {
  List<Vehicle> vehicleList = [];

  addVehicle(Vehicle vehicle) {
    vehicleList.add(vehicle);
    print("🚗 Vehicle added: ${vehicle.name} (${vehicle.stock} units)");
  }

  VehicleBook(String name, int stock) {
    for (var vehicle in vehicleList) {
      if (vehicle.name == name) {
        if (vehicle.stock >= stock) {
          vehicle.stock -= stock;
          return true;
        } else {
          print("❌ Failed: Not enough vehicles available.");
          return false;
        }
      }
    }
    print("❌ Failed:Vehicle Not Found");
    return false;
  }

  showVehicle() {
    print("\n🚗 Vehicle Stock:");
    for (var vehicle in vehicleList) {
      vehicle.showVehicle();
    }
    print("------------");
  }
}

class UserSelectVehicle {
  String username;
  List<Map<String, dynamic>> boking = [];

  UserSelectVehicle(this.username);

  selectVehicle(String name, int stock, VehicleStore vehicleList) {
    print("\n$username is boking $stock of  $name");
    bool succes = vehicleList.VehicleBook(name, stock);
    if (succes) {
      print("✅ Booking successful!");
      boking.add({"name": name, "unit": stock});
    }
  }

  userBook() {
    print("\n$username Booked :");
    for (var book in boking) {
      print("${book['name']}  x${book['unit']}");
    }
  }
}

//Employee Salary System

class EmployeeSystem {
  String name;
  String types;

  EmployeeSystem(this.name, this.types);

  showEmployee() {
    print("-$name ($types)");
  }
}

class EmployeeAdd {
  List<EmployeeSystem> employ = [];
  List<Map<String, dynamic>> monthlySalary = [];

  addedEmployee(EmployeeSystem employee, double partTimeWorkHour) {
    print("\👷 Added:${employee.name} (${employee.types})");
    employ.add(employee);
    String fixedTypes1 = "Full Time";
    String fixedTypes2 = "Part Time";
    double fulTime = 3000;
    double partTimeHourRate = 50.0;

    if (employee.types == fixedTypes1) {
      monthlySalary.add({
        "name": employee.name,
        "types": employee.types,
        "salries": fulTime,
      });
    }
    if (employee.types == fixedTypes2) {
      double totalSalary = partTimeHourRate * partTimeWorkHour;
      monthlySalary.add({
        "name": employee.name,
        "types": employee.types,
        "salries": totalSalary,
      });
    }
  }

  show() {
    print("\n🔹 Employee Salaries:");
    for (var salary in monthlySalary) {
      print(
        "-${salary['name']} (${salary['types']}): ${salary['salries']} Dollar",
      );
    }
  }
}

//Employee Salary System (with Inheritance)

class EmployeeI {
  String name;

  EmployeeI(this.name);

  calculateSalary() {
    print("-$name (General Employee)");
  }
}

class FullTimeEmployee extends EmployeeI {
  double salary;

  FullTimeEmployee(String name, this.salary) : super(name);

  @override
  calculateSalary() {
    print("-$name (Full Time): $salary Dollar");
  }
}

class PartTimeEmployee extends EmployeeI {
  double workHour;
  double hourlyRate = 50;
  late double salary;

  PartTimeEmployee(String name, this.workHour) : super(name) {
    salary = hourlyRate * workHour;
  }

  @override
  calculateSalary() {
    print("-$name (Part Time): $salary Dollar");
  }
}

class Company {
  List<EmployeeI> allEmployee = [];

  addEmployee(EmployeeI employee) {
    allEmployee.add(employee);
  }

  showSalariees() {
    print("\n🔸 Employee Salaries:");
    for (var emp in allEmployee) {
      emp.calculateSalary();
    }
  }
}

//Student Result Management System

class Student {
  String name;
  String group;

  Student(this.name, this.group);

  showResult() {
    print("Student Name: $name");
    print("Group: $group");
  }
}

class ScienceStudent extends Student {
  int Physics;
  int Chemistry;
  int Biology;

  ScienceStudent(String name, this.Physics, this.Chemistry, this.Biology)
    : super(name, "Science");

  @override
  showResult() {
    double avarage = (Physics + Chemistry + Biology) / 3;

    print("\n Student Name: $name");
    print("Group: $group");
    print("Physics :$Physics");
    print("Chemistry: $Chemistry");
    print("Biology :$Biology");
    print("Average : ${avarage.toStringAsFixed(0)}");
    if (avarage >= 90) {
      print("A+");
    } else if (avarage >= 80) {
      print("A");
    } else if (avarage >= 70) {
      print("B");
    } else if (avarage >= 60) {
      print("C");
    } else {
      print("F");
    }
  }
}

class CommerceStudent extends Student {
  int Accounting;
  int Management;
  int Finance;

  CommerceStudent(String name, this.Accounting, this.Management, this.Finance)
    : super(name, "Commerce");

  @override
  showResult() {
    double avarage = (Accounting + Management + Finance) / 3;

    print("\n Student Name: $name");
    print("Group: $group");
    print("Accounting :$Accounting");
    print("Management: $Management");
    print("Finance :$Finance");
    print("Average : ${avarage.toStringAsFixed(0)}");
    if (avarage >= 90) {
      print("A+");
    } else if (avarage >= 80) {
      print("A");
    } else if (avarage >= 70) {
      print("B");
    } else if (avarage >= 60) {
      print("C");
    } else {
      print("F");
    }
  }
}

//Student Ranking System

abstract class StudentRank {
  String name;
  String group;

  StudentRank(this.name, this.group);

  showResult();
  double getAverage();
}

class ScienceStudentRank extends StudentRank {
  List<StudentRank> allStudents = [];

  int Physics;
  int Biology;
  int Chemistry;

  ScienceStudentRank(String name, this.Physics, this.Biology, this.Chemistry)
    : super(name, "Science");

  @override
  showResult() {
    print("\nName :$name ($group)");
    print("Physics: $Physics, Biology: $Biology, Chemistry: $Chemistry");
    if (getAverage() >= 90) {
      print("Average : ${getAverage().toStringAsFixed(2)} Grade : A+");
    } else if (getAverage() >= 80) {
      print("Average : ${getAverage().toStringAsFixed(2)} Grade : A");
    } else if (getAverage() >= 70) {
      print("Average : ${getAverage().toStringAsFixed(2)} Grade : B");
    } else if (getAverage() >= 60) {
      print("Average : ${getAverage().toStringAsFixed(2)} Grade : C");
    } else {
      print("Average : ${getAverage().toStringAsFixed(2)} Grade : F");
    }
  }

  @override
  double getAverage() => (Physics + Chemistry + Biology) / 3;
}

class CommerceStudentRank extends StudentRank {
  List<StudentRank> allStudents = [];

  int Accounting;
  int Management;
  int Finance;

  CommerceStudentRank(
    String name,
    this.Accounting,
    this.Finance,
    this.Management,
  ) : super(name, "Commerce");

  @override
  showResult() {
    print("Name :$name ($group)");
    print(
      "Accounting: $Accounting, Finance: $Finance, Management: $Management",
    );
    if (getAverage() >= 90) {
      print("Average : ${getAverage().toStringAsFixed(2)} Grade : A+");
    } else if (getAverage() >= 80) {
      print("Average : ${getAverage().toStringAsFixed(2)} Grade : A");
    } else if (getAverage() >= 70) {
      print("Average : ${getAverage().toStringAsFixed(2)} Grade : B");
    } else if (getAverage() >= 60) {
      print("Average : ${getAverage().toStringAsFixed(2)} Grade : C");
    } else {
      print("Average : ${getAverage().toStringAsFixed(2)} Grade : F");
    }
  }

  @override
  double getAverage() => (Accounting + Finance + Management) / 3;
}

//basic class and objects

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  introduce() {
    print("Hi, I'm $name Iam  $age years old.");
  }
}

//inheritance

class PersonInheritance {
  String name;

  PersonInheritance(this.name);
}

class Teacher extends PersonInheritance {
  String subjects;

  Teacher(String name, this.subjects) : super(name);

  introduce() {
    print("Hi  I'm $name, and  I teach $subjects.");
  }
}

//✅ Level 1: Basic Inheritance Tasks
//Employee System

class EmployeB {
  String name;
  double salary;

  EmployeB(this.name, this.salary);

  showDeteilse() {
    print("$name $salary");
  }
}

class Manager extends EmployeB {
  double bonus;

  Manager(String name, double salary, this.bonus) : super(name, salary);

  @override
  showDeteilse() {
    print("Name: $name -Salary $salary -Bonus $bonus");
    print("Total Salary :${salary + bonus}");
  }
}

//Vehicle Inheritance

class VehicleB {
  String name;
  int speed;

  VehicleB(this.name, this.speed);

  showVehicle() {}
}

class Car extends VehicleB {
  String brand;
  String fuelType;

  Car(String name, int speed, this.brand, this.fuelType) : super(name, speed);

  @override
  showVehicle() {
    print("\nName :$name");
    print("Speed $speed Km");
    print("Brand ;$brand");
    print("Fuel Type :$fuelType");
  }
}

//✅ Level 2: Real-Life Structure
//Bank Account System

class BankAccount {
  String name;
  double balance;

  BankAccount(this.name, this.balance);

  showDeteils() {}
}

class SavingsAccount extends BankAccount {
  double interestRate;

  SavingsAccount(String name, double balance, this.interestRate)
    : super(name, balance);

  @override
  showDeteils() {
    print("Name :$name -Balance :$balance Taka -Interest Rate $interestRate%");

    double interest = (balance * interestRate * 1) / 100;

    print("1 Year Interest $interest");
  }
}

//Hospital System

class PatientPerson {
  String name;
  int age;

  PatientPerson(this.name, this.age);

  showDetails() {}
}

class Doctor extends PatientPerson {
  String speciality;

  Doctor(String name, int age, this.speciality) : super(name, age);

  @override
  showDetails() {
    super.showDetails();
    print("\nDoctore Name :$name -Age $age");
    print("Speciality  : $speciality");
  }
}

class Patients extends PatientPerson {
  String disease;

  Patients(String name, int age, this.disease) : super(name, age);

  @override
  showDetails() {
    super.showDetails();
    print("\nPatiant Name :$name - Age :$age");
    print("Disease :$disease");
  }
}

abstract class Shape {
  getArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);
  @override
  getArea() {
    print("Circle Area : ${(pi * radius * radius)}");
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  getArea() {
    print("Rectangle Area : ${length * width}");
  }
}

//✅ Level 5: Combined Challenge
//School Management System

abstract class PersonShool {
  String role;

  PersonShool(this.role);
  showDetails() {}
}

class TeacherSchool extends PersonShool {
  String subject;
  double salary;

  TeacherSchool(String role, this.subject, this.salary) : super(role);

  @override
  showDetails() {
    print("$role Subject ;$subject Salary :$salary");
  }
}

class StudentSchool extends PersonShool {
  String subject;
  int mark;

  StudentSchool(String role, this.subject, this.mark) : super(role);

  @override
  showDetails() {
    print("$role Subject :$subject  Mark $mark");
  }
}

//🎯 Level 3 Challenge: Advanced School Management System

abstract class PersonSystem {
  String role;

  PersonSystem(this.role);

  showDeteail() {}
}

class TeacherSystem extends PersonSystem {
  String teachername;
  String subject;
  double salry;

  TeacherSystem(String role, this.teachername, this.subject, this.salry)
    : super("Teacher");
}

class StudentSystem extends PersonSystem {
  String studentName;
  String subject;
  int marks;

  StudentSystem(String role, this.studentName, this.subject, this.marks)
    : super("Student");
}

class School {
  List<TeacherSystem> teacherList = [];
  List<StudentSystem> studentList = [];

  addTeacher(TeacherSystem teacher) {
    teacherList.add(teacher);
    print("\Teacher Added:  ${teacher.teachername}");
    print("----------");
  }

  addStudent(StudentSystem student) {
    studentList.add(student);
    print("\Student Added: ${student.studentName}");
    print("----------");
  }

  showAll() {
    print("\n🔹 Teacher:");
    int totalTeacher = teacherList.length;
    double totalSalary = 0;

    for (var teacher in teacherList) {
      print(
        "-Name ${teacher.teachername} Subject: ${teacher.subject} Salary : ${teacher.salry}",
      );
      totalSalary += teacher.salry;
    }
    print("Average Teacher Salary:${totalSalary / totalTeacher}");
    print("\n🔹 Students:");

    for (var student in studentList) {
      if (student.marks >= 90) {
        print(
          "- Name: ${student.studentName}, Subject: ${student.subject}, Mark: ${student.marks}, Grade: A+",
        );
      } else if (student.marks >= 80) {
        print(
          "- Name: ${student.studentName}, Subject: ${student.subject}, Mark: ${student.marks}, Grade: A",
        );
      } else if (student.marks >= 70) {
        print(
          "- Name: ${student.studentName}, Subject: ${student.subject}, Mark: ${student.marks}, Grade: B",
        );
      } else if (student.marks >= 60) {
        print(
          "- Name: ${student.studentName}, Subject: ${student.subject}, Mark: ${student.marks}, Grade: C",
        );
      } else if (student.marks > 33) {
        print(
          "- Name: ${student.studentName}, Subject: ${student.subject}, Mark: ${student.marks}, Grade: D",
        );
      } else {
        print(
          "- Name: ${student.studentName}, Subject: ${student.subject}, Mark: ${student.marks}, Grade: F",
        );
      }
    }
  }

  showRanking() {
    print("\nStudent Ranking");

    List<StudentSystem> ranked = studentList;
    ranked.sort((a, b) => b.marks.compareTo(a.marks));

    int ranks = 1;

    for (var rank in ranked) {
      print("${ranks++}. ${rank.studentName} -  ${rank.marks}");
    }
  }
}

//🎯 Level 4 Challenge: Library Management System

class Books {
  String title;
  String author;
  int copies;

  Books(this.title, this.author, this.copies);

  borrow() {}

  returnBook() {}
}

class Users {
  String name;
  List<Books> borrowedBooks = [];

  Users(this.name);

  borrowBook(Books books) {}

  returnBook(Books books) {}
}

class Libraryy {
  List<Books> catalog = [];
  List<Users> users = [];
  List<Map<String, dynamic>> userBorrowBook = [];

  addBook(Books books) {
    catalog.add(books);
    print("Book Added :${books.title}");
  }

  addUser(Users user) {
    users.add(user);
    print("User Add :${user.name}");
  }

  borrowBook(userName, bookTitle) {
    for (var book in catalog) {
      for (var user in users) {
        if (bookTitle == book.title && userName == user.name) {
          if (book.copies > 0) {
            book.copies--;
            userBorrowBook.add({"name": user.name, "book": book.title});
            print("📚 Book Borrowed: $userName borrowed ${book.title}");
          } else {
            print("❌ $userName cannot borrow ${book.title} (No copies left)");
          }
        }
      }
    }
  }

  returnBook(userName, bookTitle) {
    for (var book in catalog) {
      if (bookTitle == book.title) {
        book.copies++;
        print("✅ $userName returned ${book.title}");
      }
    }
  }

  showInventory() {
    print("\nAll Books:");

    for (var book in catalog) {
      print("-${book.title} -  ${book.copies} Copy Left");
    }
  }

  showBorrowedBooks() {
    print("\n👤 User Borrowed Books:");

    for (var user in userBorrowBook) {
      print("-${user['name']} ${user['book']}");
    }
  }
}

//🎯 Level 4 Challenge: Video Rental Store Management System

class Movie {
  String title;
  String director;
  int copiesAvailable;

  Movie(this.title, this.director, this.copiesAvailable);

  rent() {
    if (copiesAvailable > 0) {
      copiesAvailable--;
      return true;
    }
    return false;
  }

  returnMovie() {
    copiesAvailable++;
    return true;
  }
}

class CustomerRentalStore {
  String name;
  List<Movie> rentalMovie = [];

  CustomerRentalStore(this.name);

  rentMovies(Movie movie) {
    if (movie.rent()) {
      rentalMovie.add(movie);
      return true;
    }
    return false;
  }

  returnMovie(Movie movie) {
    if (rentalMovie.contains(movie)) {
      movie.returnMovie();
      rentalMovie.remove(movie);
      return true;
    }
    return false;
  }
}

class videoStore {
  List<Movie> inventory = [];
  List<CustomerRentalStore> customer = [];
  List<Map<String, dynamic>> rentedMovie = [];

  addMovie(Movie movie) {
    inventory.add(movie);
    print("🎥 Movie Added:${movie.title}");
  }

  addCustomer(CustomerRentalStore cust) {
    customer.add(cust);
    print("👤 Customer Added:${cust.name}");
  }

  void rentMovie(String customerName, movieTitle) {
    var customers = customer.firstWhere(
      (u) => u.name == customerName,
      orElse: () => CustomerRentalStore("Unknown"),
    );

    var inv = inventory.firstWhere(
      (u) => u.title == movieTitle,
      orElse: () => Movie("Unknown", "Unknown", 0),
    );

    if (customers == "Unknown") {
      print("❌ Customer not found: $customerName");
      return;
    }

    if (inv == "Unknown") {
      print("❌ Movie not found: $movieTitle");
      return;
    }

    if (customers.rentMovies(inv)) {
      rentedMovie.add({"userName": customerName, "movieName": movieTitle});
      print("📼 $customerName rented $movieTitle");
    } else {
      print("❌ $customerName cannot rent $movieTitle (No copies left)");
    }
  }

  returnMovie(cutomerName, movieTitle) {
    var customers = customer.firstWhere(
      (u) => u.name == cutomerName,
      orElse: () => CustomerRentalStore("Unknown"),
    );

    var inv = inventory.firstWhere(
      (u) => u.title == movieTitle,
      orElse: () => Movie("Unknown", "Unknown", 0),
    );
    if (customers == "Unknown") {
      print("❌ Customer not found: $cutomerName");
      return;
    }

    if (inv == "Unknown") {
      print("❌ Movie not found: $movieTitle");
      return;
    }

    if (customers.returnMovie(inv)) {
      rentedMovie.removeWhere(
        (entry) =>
            entry['userName'] == cutomerName &&
            entry['movieName'] == movieTitle,
      );
      print("✅ $cutomerName returned $movieTitle");
    } else {
      print("❌ $cutomerName did not borrow ${inv.title}");
    }
  }

  showInventory() {
    print("\n🎯 Inventory:");
    for (var store in inventory) {
      print("-${store.title} - ${store.copiesAvailable} Copy Left");
    }
  }

  showRentedMovie() {
    print("\n📋 Rented Movies:");
    for (var rented in rentedMovie) {
      print("-${rented['userName']}  rented ${rented['movieName']}");
    }
  }
}

//🎯 Level 4 Practice Challenge 2: Hospital Management System

class DoctoreHM {
  String name;
  String specialization;
  int availableSlots;

  DoctoreHM(this.name, this.specialization, this.availableSlots);

  bookSlot() {
    if (availableSlots > 0) {
      availableSlots--;
      return true;
    }
    return false;
  }

  cencelSlot() {
    availableSlots++;
    return true;
  }
}

class PatientHM {
  String name;
  List<DoctoreHM> appointments = [];

  PatientHM(this.name);

  bookAppointment(DoctoreHM doctore) {
    if (doctore.bookSlot()) {
      appointments.add(doctore);
      return true;
    }
  }

  cencelAppointment(DoctoreHM doctore) {
    if (doctore.cencelSlot()) {
      appointments.contains(doctore);
      appointments.remove(doctore);
      return true;
    }
    return false;
  }
}

class HospitalHM {
  List<DoctoreHM> doctore = [];
  List<PatientHM> patients = [];
  List<Map<String, dynamic>> appointmentStatus = [];

  addDoctore(DoctoreHM dc) {
    doctore.add(dc);
    print("Doctore Added :${dc.name}");
  }

  addPatients(PatientHM pt) {
    patients.add(pt);
    print("Patients Added ${pt.name}");
  }

  bookAppointment(patientName, doctoreName) {
    PatientHM? patientNull;
    DoctoreHM? doctoreNull;
  try {
      patientNull = patients.firstWhere((p) => p.name == patientName);
    } catch (e) {
      patientNull = null;
    }

    try {
      doctoreNull = doctore.firstWhere((d) => d.name == doctoreName);
    } catch (e) {
      doctoreNull = null;
    }

    if (patientNull == null) {
      print("Patient Not Found");
      return;
    }

    if (doctoreNull == null) {
      print("Doctore Not Found");
      return;
    }

    if (patientNull.bookAppointment(doctoreNull)) {
      appointmentStatus.add({"pName": patientName, "dName": doctoreName});
      print("✅ Patient $patientName booked appointment with $doctoreName");
    } else {
      print("❌ $doctoreName has no available slots");
    }
  }

  cencelAppointment(patientName, doctoreName) {
    PatientHM? patientNull;
    DoctoreHM? doctoreNull;

    try {
      patientNull = patients.firstWhere((p) => p.name == patientName);
    } catch (e) {
      patientNull = null;
    }

    try {
      doctoreNull = doctore.firstWhere((d) => d.name == doctoreName);
    } catch (e) {
      doctoreNull = null;
    }

    if (patientNull == null) {
      print("Patient Not Found");
      return;
    }

    if (doctoreNull == null) {
      print("Doctore Not Found");
      return;
    }

    if (patientNull.cencelAppointment(doctoreNull)) {
      appointmentStatus.removeWhere(
        (entry) =>
            entry['pName'] == patientName && entry['dName'] == doctoreName,
      );
      print("✅  $patientName Cencel appointment with $doctoreName");
    }
  }

  showAllAppointMent() {
    print("\n📋 📋 Appointments:");
    for (var ap in appointmentStatus) {
      print("-${ap['pName']}: ${ap['dName']}");
    }
  }

  showDoctore() {
    print("\n📋 Doctor Status:");
    for (var dc in doctore) {
      print(
        "-${dc.name} (${dc.specialization}) - ${dc.availableSlots} Slot left",
      );
    }
  }
}

// Main Function
//Void Main

void main() {
  String name = "Bayajit islam";

  int age() {
    int ages = 20;
    return ages;
  }

  void showNameandages() {
    print("\nStudent Name : $name");
    print("Student Ages : ${age()}");
  }

  showNameandages();
  test obj = test(30, 40);
  obj.divison();
  test obj2 = test(5, 5);
  obj2;

  int a = 200;
  int b = 300;
  test additon = test(a, b);
  additon;

  print("\nBasic OOP Problem Solve ✔");
  student show = student("Bayajit", 11, 1);
  show.showDetails();

  print("\nBank Account Management System ✔");
  BankAccountClass showResult = BankAccountClass();
  showResult.accountDetails();

  print("\nStudent Pass/Fail Checker (Using Multiple Objects)");
  List<StudentPassChecker> students = [
    StudentPassChecker("Bayajit", 10, 85),
    StudentPassChecker("Rafi", 10, 40),
    StudentPassChecker("Nishi", 10, 25),
    StudentPassChecker("Arif", 10, 67),
  ];

  int pass = 0;
  int fail = 0;

  for (var data in students) {
    data.showResult();
    if (data.marks >= 33)
      pass++;
    else
      fail++;
  }

  print("Total Pass: $pass");
  print("Total Fail: $fail");

  print("\nEmployee Salary Bonus System");
  List<Employee> employees = [
    Employee("Bayajit ", "Manager", 25000),
    Employee("Rafi", "Developer", 18000),
    Employee("Nishi", "Designer", 22000),
    Employee("Arif", "Intern", 15000),
  ];
  for (var emp in employees) emp.calculateBonus();

  print("\nEncapsulated ATM Machine 💳");
  ATMmachine bayajitAccount = ATMmachine("Bayajit", 773943);
  bayajitAccount.deposit(2000);
  bayajitAccount.withdraw(1500);
  bayajitAccount.accountDetailse();

  ATMmachine majorDalim = ATMmachine("Major Dalim", 7783433, 1000);
  majorDalim.deposit(999);
  majorDalim.withdraw(1000);
  majorDalim.accountDetailse();

  print("\nSimple Library Management System (with OOP)");
  Library myLibrary = Library();
  myLibrary.addBook(Book("Dart Essentials", "Jane Smith", 2));
  myLibrary.addBook(Book("Flutter Basic", "Major Dalim", 1));
  myLibrary.addBook(Book("Youtuber", "sheick hasina", 0));
  myLibrary.showAllBooks();
  User riad = User("Riad ");
  riad.borrow("Dart Essentials", myLibrary);
  riad.borrow("youtuber", myLibrary);
  riad.borrow("dart essentials", myLibrary);
  riad.showAllBorrow();
  myLibrary.showAllBooks();

  print("\nSimple Shop Management System");
  Shop myshop = Shop();
  myshop.addProduct(Product("oil", 60, 4));
  myshop.addProduct(Product("salt", 40, 1));
  myshop.addProduct(Product("apple", 20, 7));
  myshop.showInventory();
  Customer order = Customer("Major Dalim");
  order.order("oil", 2, myshop);
  Customer order2 = Customer("Riad");
  order2.order("salt", 2, myshop);
  order2.order("oil", 1, myshop);
  order2.order("apple", 5, myshop);
  order.showOrder();
  order2.showOrder();

  print("\nSimple Hospital Management System (with OOP)");

  Hospital doctoreList = Hospital();
  doctoreList.addDoctore(Doctore("Dr. Karim", "Cardiologist", 5));
  doctoreList.addDoctore(Doctore("Dr. Nila", "Dentist", 3));

  doctoreList.showAllDoctore();

  Patient patientName1 = Patient("Major Dalim");
  patientName1.book("Dr. Karim", 2, doctoreList);
  patientName1.book("Dr. Nila", 4, doctoreList);

  Patient patientName2 = Patient("Riad Hasan");
  patientName2.book("Dr. Nila", 3, doctoreList);
  patientName2.book("Dr. Karim", 4, doctoreList);
  patientName2.book("Dr. jahid", 1, doctoreList);

  patientName1.showAppointments();
  patientName2.showAppointments();

  print("\nVehicle Booking System");

  VehicleStore myStore = VehicleStore();
  myStore.addVehicle(Vehicle("Toyota", 3));
  myStore.addVehicle(Vehicle("Honda Civic", 1));
  myStore.addVehicle(Vehicle("RRR", 1));

  myStore.showVehicle();

  UserSelectVehicle majorDalimV = UserSelectVehicle("Major Dalim");
  majorDalimV.selectVehicle("RRR", 1, myStore);
  majorDalimV.selectVehicle("Toyota", 2, myStore);
  majorDalimV.selectVehicle("TTT", 1, myStore);
  majorDalimV.userBook();

  UserSelectVehicle bayajitIslam = UserSelectVehicle("Bayajit Islam");
  bayajitIslam.selectVehicle("RRR", 1, myStore);
  bayajitIslam.selectVehicle("Honda Civic", 1, myStore);
  bayajitIslam.userBook();

  print("\nCompany Employee Management System");

  EmployeeAdd addEmployee = EmployeeAdd();
  addEmployee.addedEmployee(EmployeeSystem("Bayajit", "Part Time"), 60);
  addEmployee.addedEmployee(EmployeeSystem("Major Dalim", "Full Time"), 00);
  addEmployee.show();

  print(" \nEmployee Salary System (with Inheritance)");

  Company mycompany = Company();

  mycompany.addEmployee(FullTimeEmployee("Bayajit Islam", 3000));
  mycompany.addEmployee(PartTimeEmployee("Major Dalim", 80));

  mycompany.showSalariees();

  print("\nStudent Result Management System");

  ScienceStudent SciStudent = ScienceStudent("Major Dalim", 66, 77, 88);
  SciStudent.showResult();

  CommerceStudent commStudnet = CommerceStudent("Tanvir", 88, 77, 68);
  commStudnet.showResult();

  print("\nStudent Ranking System");

  List<StudentRank> studentsS = [
    ScienceStudentRank("Dalim", 90, 85, 88),
    ScienceStudentRank("Kamal", 72, 66, 74),
    CommerceStudentRank("Jamal", 78, 82, 79),
    CommerceStudentRank("Rafi", 92, 89, 90),
  ];

  print("🎓 All Student Results:\n");
  for (var student in studentsS) {
    student.showResult();
    print("----------");
  }

  studentsS.sort((a, b) => b.getAverage().compareTo(a.getAverage()));

  print("\n🏆 Student Ranking:");

  int rank = 1;

  for (var st in studentsS) {
    print(
      "Rank  #${rank++} _ ${st.name} (${st.group}) - Average: ${st.getAverage().toStringAsFixed(2)}",
    );
  }

  print("\n✅ Challenge 1: Basic Class & Object");

  Person person = Person("Bayajit Islam", 20);
  person.introduce();

  print("\n✅ Challenge 2: Inheritance");

  Teacher teacherrr = Teacher("Major Dalim", "English");
  teacherrr.introduce();

  print("\n✅ Level 1: Basic Inheritance Tasks Employee System");

  Manager employeeInformation = Manager("Riad", 30000, 6000);
  employeeInformation.showDeteilse();

  print("\nVehicle Inheritance");
  Car carSelect = Car("RRR", 300, "RRR", "OIL");
  carSelect.showVehicle();

  print("\nLevel 2: Real-Life Structure - Bank Account System");

  SavingsAccount svaccount = SavingsAccount("Candy", 5000, 5);
  svaccount.showDeteils();

  print("\nHospital System");

  Doctor rrr = Doctor("Major Dalim", 44, 'Cencer');
  Patients ppp = Patients("Riad", 22, 'Cencer');
  rrr.showDetails();
  ppp.showDetails();

  print("\nMethod Overriding");

  Circle circle = Circle(5);
  Rectangle rectangle = Rectangle(10, 4);
  circle.getArea();
  rectangle.getArea();

  print("\n✅ Level 5: Combined Challenge");

  TeacherSchool tsl = TeacherSchool("Teacher", "English", 12000);
  StudentSchool STL = StudentSchool("Student ", "English", 77);

  tsl.showDetails();
  STL.showDetails();

  print("\n🎯 Level 3 Challenge: Advanced School Management System");

  School myschool = School();
  myschool.addTeacher((TeacherSystem("", "Nila", "English", 20000)));
  myschool.addStudent((StudentSystem("", "Major Dalim", "Math", 88)));
  myschool.addTeacher((TeacherSystem("", "Billa", "English", 33000)));
  myschool.addStudent((StudentSystem("", "Riad", "Math", 32)));
  myschool.addTeacher((TeacherSystem("", "Sweety", "Physics", 2500)));
  myschool.addStudent((StudentSystem("", "Pablo", "English", 76)));
  myschool.addTeacher((TeacherSystem("", "Rithy", "Math", 31000)));
  myschool.addStudent((StudentSystem("", "Bayajit", "Math", 98)));
  myschool.showAll();
  myschool.showRanking();

  print("\n🎯 Level 4 Challenge: Library Management System");

  Libraryy mylibrary = Libraryy();
  mylibrary.addBook(Books("ALC", "A", 2));
  mylibrary.addBook(Books("Tomato", "T", 1));
  mylibrary.addUser(Users("Major Dalim"));
  mylibrary.addUser(Users("Bayajit"));
  mylibrary.borrowBook("Major Dalim", "ALC");
  mylibrary.borrowBook("Bayajit", "Tomato");
  mylibrary.returnBook("Bayajit", "Tomato");
  mylibrary.returnBook('Major Dalim', "ALC");
  mylibrary.showInventory();
  mylibrary.showBorrowedBooks();

  print("\n🎯 Level 4 Challenge: Video Rental Store Management Systemect");

  videoStore myVideoStore = videoStore();
  myVideoStore.addMovie(Movie("Interstellar", "Major Dalim", 2));
  myVideoStore.addMovie(Movie("Inception", "Major Dalim", 1));

  myVideoStore.addCustomer(CustomerRentalStore("Riad"));
  myVideoStore.addCustomer(CustomerRentalStore("Bayajit"));

  myVideoStore.rentMovie("Bayajit", "Inception");
  myVideoStore.rentMovie("Riad", "Inception");
  myVideoStore.rentMovie("Riad", "Interstellar");

  myVideoStore.showInventory();
  myVideoStore.showRentedMovie();

  myVideoStore.returnMovie("Riad", "Inception");
  myVideoStore.returnMovie("Bayajit", "Inception");

  myVideoStore.rentMovie("Riad", "Inception");

  myVideoStore.showInventory();
  myVideoStore.showRentedMovie();

  print("\n🎯 Level 4 Practice Challenge 2: Hospital Management System");

  HospitalHM myHospital = HospitalHM();
  myHospital.addDoctore(DoctoreHM("Dr. Nila", "Dentist", 2));
  myHospital.addDoctore(DoctoreHM("Dr. Shila", "Surgeon", 3));

  myHospital.addPatients(PatientHM("Major Dalim"));
  myHospital.addPatients(PatientHM("Riad"));

  myHospital.bookAppointment("Riad", "Dr. Nila");
  myHospital.bookAppointment("Major Dalim", "Dr. Shila");
  myHospital.bookAppointment("Riad", "Dr.");

  myHospital.cencelAppointment("Major Dalim", "Dr. Shila");

  myHospital.showAllAppointMent();
  myHospital.showDoctore();
}
