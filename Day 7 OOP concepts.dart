import 'dart:async';

class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

class Customer {
  String name;
  String paymentMethod;
  List<Product> cart = [];

  Customer(this.name, this.paymentMethod);

  addToCart(Product product) {
    cart.add(product);
  }
}

abstract class DiscountCount with LoggerMixin {
  String code;

  DiscountCount(this.code);

  double apply(double totalAmount);

  @override
  String toString() => "Coupon Code: $code";
}

class TenPercentOff extends DiscountCount {
  TenPercentOff() : super("10OFF");

  @override
  double apply(double totalAmount) {
    return totalAmount * 0.90;
  }
}

class FlatAmountOff extends DiscountCount {
  FlatAmountOff() : super("50FLAT");

  @override
  double apply(double totalAmount) {
    return totalAmount - 50;
  }
}

class CouponFactory {
  static DiscountCount getDiscount(String couponCode) {
    switch (couponCode.toUpperCase()) {
      case "10OFF":
        return TenPercentOff();
      case "50FLAT":
        return FlatAmountOff();
      default:
        throw Exception("No Discount Code Apply");
    }
  }
}

abstract class PaymentMethod with LoggerMixin {
  String methodeName;

  PaymentMethod(this.methodeName);

  pay(double price) {}
}

class CashPayment extends PaymentMethod {
  CashPayment() : super("CashPayment");

  @override
  pay(price) {
    print("Paid $price in CashPayment");
  }
}

class CreditCardPayment extends PaymentMethod {
  CreditCardPayment() : super("CreditCardPayment");

  @override
  pay(double price) {
    print("Paid  $price in CreditCardPayment");
  }
}

class MobilePayment extends PaymentMethod {
  MobilePayment() : super("MobilePayment");

  @override
  pay(double price) {
    print("Paid $price in MobilePayment");
  }
}

class PaymentFactory {
  static PaymentMethod paymnet(selecetPayment) {
    switch (selecetPayment.toString()) {
      case "CashPayment":
        return CashPayment();
      case "CreditCardPayment":
        return CreditCardPayment();
      case "MobilePayment":
        return MobilePayment();
      default:
        throw Exception("Please Select Payment Method");
    }
  }
}

mixin LoggerMixin {
  List<String> Logs = [];

  addLogs(msg) {
    Logs.add("Log : $msg");
  }

  printAllLogs() {
    for (var log in Logs) {
      print(log);
    }
  }
}

class BillingSystem with LoggerMixin {
  final Customer customer;
  final DiscountCount? discount;

  BillingSystem(this.customer, this.discount);

  genarateBill() {
    print("Customer: ${customer.name}");
    print("Cart :");
    double total = 0;

    for (var c in customer.cart) {
      print("-${c.name} - ${c.price}");
      total += c.price;
    }
    print("Total Before Discount : $total");

    double finalAmount = total;

    if (discount != null) {
      finalAmount = discount!.apply(total);
      print("Coupon Applied: ${discount!.code}");
      print("Total After Disocunt : $finalAmount");
      addLogs("Coupon ${discount!.code} Applied.");
    } else {
      print("No Coupon Applied");
    }

    PaymentMethod payment = PaymentFactory.paymnet(customer.paymentMethod);
    payment.pay(finalAmount);
    addLogs("Paid ৳$finalAmount using ${payment.methodeName}");
  }
}

//Movie Ticket Booking System

class Movie {
  String name;
  double price;
  int availableSeats;

  Movie(this.name, this.price, this.availableSeats);
}

class CustomerMovie {
  String name;
  Movie selectedMovie;
  int seatsToBook;

  CustomerMovie(this.name, this.selectedMovie, this.seatsToBook);
}

class BokingSystem {
  List<Movie> movielist = [];

  bookSystem(CustomerMovie customer) {
    print("Customer: ${customer.name}");

    Movie movie = customer.selectedMovie;
    if (customer.seatsToBook <= movie.availableSeats) {
      print("Movie: ${movie.name}");
      print("Seats Booked :${customer.seatsToBook}");
      print("Total Price ${customer.seatsToBook * movie.price}");
      movie.availableSeats -= customer.seatsToBook;
    } else {
      print("Sorry, not enough seats available for ${movie.name}.");
      print(
        " Availabel: ${movie.availableSeats}  Requested: ${customer.seatsToBook}",
      );
    }
  }
}

// Library Management System

class Book {
  String title;
  String author;
  int copiesAvailabl;

  Book(this.title, this.author, this.copiesAvailabl);

  bool borrowBook() {
    if (copiesAvailabl > 0) {
      copiesAvailabl--;
      return true;
    }
    return false;
  }
}

class Member {
  String name;
  List<Book> borrowedBooks = [];

  Member(this.name);

  bool borrow(Book book) {
    bool successfull = book.borrowBook();
    if (successfull) {
      borrowedBooks.add(book);
      return true;
    }
    return false;
  }
}

class Library {
  List<Book> books = [];

  lendBook(Member member, String bookTitle) {
    bool found = false;

    for (var book in books) {
      if (bookTitle == book.title) {
        bool success = member.borrow(book);
        if (success) {
          print("${member.name} Borrow ${book.title}");
        } else {
          print("No copies left for: ${book.title}");
        }
        found = true;
        break;
      }
    }
    if (!found) {
      print("No Book Available with title: $bookTitle");
    }
  }
}

//Course Enrollment System

class Course {
  String title;
  int totalSeats;
  double fee;

  Course(this.title, this.totalSeats, this.fee);

  seat() {
    if (totalSeats > 0) {
      totalSeats--;
      return true;
    }
    return false;
  }
}

class Student {
  String name;
  Course selectedCourse;
  List<Course> listCourse = [];

  Student(this.name, this.selectedCourse);

  seats() {
    bool succes = selectedCourse.seat();
    if (succes) {
      listCourse.add(selectedCourse);
      return true;
    }
    return false;
  }
}

class EnrollmentSystem {
  List<Course> courses = [];

  void enroll(Student student) {
    bool found = false;

    for (var course in courses) {
      if (course.title == student.selectedCourse.title) {
        bool succes = student.seats();
        if (succes) {
          print("Course: ${course..title}");
          print("Total Fee: ${course.fee}");
          print("Seats Remaining : ${course.totalSeats}");
        } else {
          print("Sorry, no seats available in [${course.title}].");
        }
        found = true;
        break;
      }
    }
    if (!found) {
      print("No Course Availabel");
    }
  }
}

//Encapsulated Bank Account System

class BankAccount {
  double _balance = 0;

  deposit(double deposit) {
    if (deposit > 0) {
      return true;
    }
    return false;
  }

  withdraw(double withdraw) {
    if (withdraw <= _balance) {
      return true;
    }
    return false;
  }
}

class CustomerBank {
  String name;
  BankAccount account;

  CustomerBank(this.name, this.account);

  performDeposit(double amount) {
    bool succes = account.deposit(amount);
    if (succes) {
      print("Transaction Successful: Deposited $amount");
    } else {
      print("Try Again");
    }
  }

  performWithdraw(double amount) {
    bool succes = account.withdraw(amount);
    if (succes) {
      print("Transaction Successful: Withdraw $amount");
    } else {
      print("Transaction Failed: Insufficient funds.");
    }
  }
}

class BankSystem {
  List<CustomerBank> customers = [];

  void registerCustomer(CustomerBank customer) {
    customers.add(customer);
    print("Customer ${customer.name} registered.");
  }

  CustomerBank? findCustomer(String name) {
    for (var customer in customers) {
      if (customer.name == name) {
        return customer;
      }
    }
    return null;
  }

  showBAnkbalance() {
    for (var c in customers) {
      print(c);
    }
  }
}

void main() {
  var p1 = Product("Mouse", 500);
  var p2 = Product("Keyboard", 1000);

  var customer = Customer("Bayajit", "CreditCardPayment");
  customer.addToCart(p1);
  customer.addToCart(p2);

  var discount = CouponFactory.getDiscount("10OFF");

  var billing = BillingSystem(customer, discount);
  billing.genarateBill();

  print("\n  Movie Ticket Booking System\n");

  Movie movie1 = Movie("Avenger", 200, 2);

  CustomerMovie c1 = CustomerMovie("Bayajit", movie1, 2);

  BokingSystem bs = BokingSystem();
  bs.bookSystem(c1);

  print("\n Library Management System");

  Book books1 = Book("Dart", "Major Dalim", 5);

  Member member1 = Member("Bayajit");
  member1.borrow(books1);
  Library myLibrary = Library();
  myLibrary.books.add(books1);
  myLibrary.lendBook(member1, books1.title);

  print("\nCourse Enrollment System\n");

  Course course1 = Course("Flutter Development", 1, 4000);
  Student st1 = Student("Bayajit", course1);
  Student st2 = Student('Majro', course1);

  EnrollmentSystem mycourse = EnrollmentSystem();
  mycourse.courses.add(course1);
  mycourse.enroll(st1);
  mycourse.enroll(st2);

  print("\nBank system\n");

  BankSystem bankSystem = BankSystem();

  var customer1 = CustomerBank("Bayajit", BankAccount());
  bankSystem.registerCustomer(customer1);

  var customer2 = CustomerBank("Alia", BankAccount());
  bankSystem.registerCustomer(customer2);

  customer2.performDeposit(500);
  customer1.performDeposit(6000);
  customer2.performWithdraw(700);
}
