import 'dart:io';

mixin Notifier {
  notify(String msg) {
    print("🔔 Notification:$msg");
  }
}

class Teacher with Notifier {
  teachers(String message) {
    print("Student  : $message");
    notify("$message");
  }
}

//Logger Mixin

mixin Logger {
  List<String> _logs = [];

  void log(String action) {
    _logs.add(action);
    print("Log : $action");
  }

  void showLogs() {
    print("\nAll Logs");
    for (var logs in _logs) {
      print("-$logs");
    }
  }
}

class User with Logger {
  String username;

  User(this.username);

  void sendMsg(String sendMsgg) {
    print(" User $username : Massage $sendMsgg");
    log("$username Send Message : $sendMsgg");
  }
}

//Notification System

mixin Notifiable {
  List<String> _AllNotify = [];

  void notify(String messegae) {
    _AllNotify.add(messegae);
  }

  void showAllNotification() {
    print("\nAll Notification");
    for (var notify in _AllNotify) {
      print("-$notify");
    }
  }
}

class Userr with Notifiable {
  String name;

  Userr(this.name);
}

class AdminUser extends Userr {
  String selectUser = "Admin";

  AdminUser(String name) : super(name);

  void sendMessage(String sendMessage) {
    print("\n$selectUser : $name - $sendMessage");
    notify("$name : $sendMessage");
  }
}

class RegulerUser extends Userr {
  String reguler = "Reguler";

  RegulerUser(String name) : super(name);

  void sendMessage(String sendMessage) {
    print("$reguler : $name - $sendMessage");
    notify("$name : $sendMessage");
  }
}

// Mini Practice Task – Mixin + Central Logging + Role Access

class Feedbacks {
  static final List<Map<String, String>> _logs = [];

  static void stor(String user, String msg) {
    _logs.add({"user": user, "msg": msg});
  }

  static void showAll() {
    print("\n✅ Admin View - All Feedback:");
    for (var log in _logs) {
      print("-${log['user']}: ${log['msg']}");
    }
  }

  static void showbyuser(String user) {
    print("\n✅ Feedback by :");
    for (var log in _logs) {
      if (log['user'] == user) {
        print("-${log['user']}: ${log['msg']}");
      }
    }
  }

  static deletMessage(String user, String msg) {}
}

mixin Feedbacklogs {
  void logFeedback(String user, String msg) {
    Feedbacks.stor(user, msg);
  }
}

class Useer with Feedbacklogs {
  String name;

  Useer(this.name);

  sendFeedback(String msg) {
    print("-$name : $msg");
    logFeedback(name, msg);
  }
}

class AdminUserr extends Useer {
  String userType = "Admin";

  AdminUserr(String name) : super(name);

  seeAllFeedBack() {
    Feedbacks.showAll();
  }
}

class GuestUser extends Useer {
  String userType = "Guest";

  GuestUser(String name) : super(name);
}

class StaffUser extends Useer {
  String userType = "Staf";

  StaffUser(String name) : super(name);

  seeYourFeedBack() {
    Feedbacks.showbyuser(name);
  }
}

//🎯 Multi-Role Chat System (Console Based)

class MyMessageSystem {
  static List<Map<String, String>> _logs = [];

  static void store(String user, String msg) {
    _logs.add({"user": user, "msg": msg});
  }

  static void seeAllLogs() {
    print("\n Admin View");
    for (var log in _logs) {
      print(log);
    }
  }

  static void seeOwnLogs(String user) {
    for (var log in _logs) {
      if (log['user'] == user) {
        print("${log['user']}: ${log['msg']}");
      }
    }
  }

  static void deletMassage(String username, String msg) {
    int index = _logs.indexWhere(
      (log) => log['user'] == username && log['msg'] == msg,
    );
    if (index != -1) {
      _logs.removeAt(index);
    }
  }

  static void warnUser(moderatorname, user, msg) {
    for (var log in _logs) {
      if (user == log['user']) {
        print("-$moderatorname Warn To $user - $msg");
      }
    }
  }
}

mixin MyAppLogger {
  logs(String user, String msg) {
    MyMessageSystem.store(user, msg);
  }
}

abstract class MyAppUser with MyAppLogger {
  String name;

  MyAppUser(this.name);

  factory MyAppUser.create(String username, String type) {
    if (type.toLowerCase() == "admin") {
      return MyAppAdmin(username);
    } else if (type.toLowerCase() == "moderator") {
      return MyAppModeratorUser(username);
    } else {
      return MyAppRegularUser(username);
    }
  }
}

class MyAppAdmin extends MyAppUser {
  MyAppAdmin(String name) : super(name);

  sendMessage(String msg) {
    print("-$name : $msg");
    logs(name, msg);
  }

  seeOwnMessage() {
    MyMessageSystem.seeOwnLogs(name);
  }

  seeMessageHistoy() {
    MyMessageSystem.seeAllLogs();
  }

  deletMessage(String username, String msg) {
    MyMessageSystem.deletMassage(username, msg);
  }
}

class MyAppModeratorUser extends MyAppUser {
  MyAppModeratorUser(String name) : super(name);

  sendMessage(String msg) {
    print("-$name : $msg");
    logs(name, msg);
  }

  warnUserr(String user, String msg) {
    MyMessageSystem.warnUser(name, user, msg);
  }
}

class MyAppRegularUser extends MyAppUser {
  MyAppRegularUser(String name) : super(name);

  sendMessage(String msg) {
    print("-$name : $msg");
    logs(name, msg);
  }
}

void main() {
  Teacher teacher = Teacher();
  teacher.teachers("give solution");

  User user = User("Major Dalim");
  user.sendMsg("Hi Sir How are You");

  RegulerUser bayajit = RegulerUser("Bayajit");
  bayajit.sendMessage("Hello Flutter");
  bayajit.showAllNotification();

  AdminUser majordalim = AdminUser("Major Dalim");
  majordalim.sendMessage("I Am Done");
  majordalim.showAllNotification();

  print("\n🧪 Mini Practice Task – Mixin + Central Logging + Role Access\n");

  AdminUserr riad = AdminUserr("Riad");
  GuestUser dalim = GuestUser("Dalim");
  StaffUser rithy = StaffUser("Rithy");

  rithy.sendFeedback("Your App Is Good");
  dalim.sendFeedback("Gta My Favorite");
  riad.sendFeedback("Nice Poduct");

  rithy.seeYourFeedBack();
  riad.seeAllFeedBack();

  print("\n🎯 Multi-Role Chat System (Console Based)");

  stdout.write("Enter Your UserName :");
  String username = stdin.readLineSync() ?? '';

  String? role;
  while (true) {
    stdout.write("Select your role (admin/moderator/regular): ");
    role = stdin.readLineSync()?.toLowerCase();

    if (role == "admin" || role == "moderator" || role == "reguler") {
      break;
    } else {
      print("Invalid role ,  Please try again");
    }
  }

  print("Welcome $username! You logged in as $role.");

  MyAppUser user1 = MyAppUser.create("Major", "reguler");

  if (user1 is MyAppRegularUser) {
    user1.sendMessage("Hi Admin");
  }

  MyAppUser admin = MyAppUser.create(username, role!);
  if (admin is MyAppAdmin) {
    admin.sendMessage("Hello From $role ");
    admin.seeMessageHistoy();
    admin.deletMessage("Major", "Hi Admin");
    admin.seeMessageHistoy();
  } else {
    print("User is not Meed Criateria.");
  }
}
