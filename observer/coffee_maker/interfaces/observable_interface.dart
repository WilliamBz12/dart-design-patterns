import 'observer_interface.dart';

abstract class Observable {
  void registerObserver(Observer observer) {}

  void unregisterObserver(Observer observer) {}

  void notifyObservers(String status) {}
}
