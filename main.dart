import 'dart:io';

class Trip {
  String destination;
  DateTime startDate;
  DateTime endDate;
  String purpose;
  double budget;

  Trip(
      {required this.destination,
      required this.startDate,
      required this.endDate,
      required this.purpose,
      required this.budget});

  void displayTripDetails() {
    print('Destination: $destination');
    print('Start Date: ${startDate.toString().split(' ')[0]}');
    print('End Date: ${endDate.toString().split(' ')[0]}');
    print('Purpose: $purpose');
    print('Budget: \$${budget.toStringAsFixed(2)}');
  }
}

class User {
  final String username;
  final String password;
  final double availableBudget;

  User(this.username, this.password, this.availableBudget);
}

void main() {
  User validUser = User('ARehman', '12345');

  stdout.write('Enter username: ');
  String enteredUsername = stdin.readLineSync() ?? '';

  stdout.write('Enter password: ');
  String enteredPassword = stdin.readLineSync() ?? '';

  if (enteredUsername == validUser.username && enteredPassword == validUser.password) {
    print('Login successful! Welcome, ${validUser.username}.\n');
    }else {
    print('Invalid username or password. Access denied.');
  }

      print('Welcome to the Business Trip Portal');

      stdout.write('Enter Destination: ');
      String destination = stdin.readLineSync()!;

      stdout.write('Enter Start Date (yyyy-mm-dd): ');
      DateTime startDate = DateTime.parse(stdin.readLineSync()!);

      stdout.write('Enter End Date (yyyy-mm-dd): ');
      DateTime endDate = DateTime.parse(stdin.readLineSync()!);

      stdout.write('Enter Purpose: ');
      String purpose = stdin.readLineSync()!;

      stdout.write('Enter Budget: ');
      double budget = double.parse(stdin.readLineSync()!);

      Trip trip = Trip(
          destination: destination,
          startDate: startDate,
          endDate: endDate,
          purpose: purpose,
          budget: budget);

      print('\nTrip Details:');
      trip.displayTripDetails();
      
    if (validUser.availableBudget > 2000) {
      print('"Congratulations!" Your trip is confirmed!\n');

    } else {
      print('Sorry, you are not eligible for the trip due to insufficient budget.');
    }
  } 





