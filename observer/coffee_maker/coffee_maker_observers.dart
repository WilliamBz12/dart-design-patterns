
import 'interfaces/observer_interface.dart';

class Me implements Observer {
  String name = "william";

  @override
  void notify(String status) {
    print("$name is $status");
  }
}

class MyWife implements Observer {
  String name = "myWife";

  @override
  void notify(String status) {
    print("$name is $status");
  }
}