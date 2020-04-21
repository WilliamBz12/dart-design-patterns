# Observer Design Pattern

Observer pattern is so simple and very used. The Observer is useful when two or more objects need to hear actions of another object. The objects that are listening is called by **observers** and the object that is heard is called by **subject**.

 
-   Define a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically.
-   Encapsulate the core (or common or engine) components in a Subject abstraction, and the variable (or optional or user interface) components in an Observer hierarchy.


# Structure

![structure](https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Observer.svg/500px-Observer.svg.png)

Subject represents the core abstraction. Observer represents the variable (or dependent or optional or user interface) abstraction. The Subject prompts the Observer objects to do their thing. Each Observer can call back to the Subject as needed. 

# Example

Here, coffee maker is a subject (who go is heard) and some people (Me and MyWife) are listening the coffee maker, waiting for your coffee. So, only new action from coffee maker, it's necessary notify the observables with the new status of your coffee.
Steps:
 - create an interface to observers (with name and a function to notify)
 - create another interface to subject (with functions to register, unregister and notify observers)
 -  create a coffee maker subject implementing the subject interface and add actions to class (like doing and done)
 - create a coffee maker observers for each implements the observers interface and handle the notification
 - last, in your main.dart initialize the observers and the subject, register the observers in subject and fire the actions.


