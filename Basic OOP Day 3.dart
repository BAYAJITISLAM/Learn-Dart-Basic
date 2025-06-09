// basic class

import 'dart:typed_data';

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
    // TODO: implement calculateSalary
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
}
