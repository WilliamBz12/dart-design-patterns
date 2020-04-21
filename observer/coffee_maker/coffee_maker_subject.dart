import 'interfaces/subject_interface.dart';
import 'interfaces/observer_interface.dart';

class CoffeeMakerSubject implements Subject {
  
  List<Observer> observerCollection = [];

  void doing() => notifyObservers("doing");

  void done() => notifyObservers("done");

  @override
  void notifyObservers(String status) {
    observerCollection.forEach((observer) {
      observer.notify(status);
    });
  }

  @override
  void registerObserver(Observer observer) {
    observerCollection.add(observer);
    observer.notify("add");
  }

  @override
  void unregisterObserver(Observer observer) {
    observerCollection.remove(observer);
    observer.notify("remove");
  }
}
