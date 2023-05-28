
##Vesti user form project 

This project is a dynamic multi-form application developed using Flutter. It allows users to fill out multiple forms dynamically. The project demonstrates my approach to solving the problem, my understanding of Flutter, and how I managed the state.

## Problem Approach

To solve the problem of creating a dynamic multi-form application, I utilized the following approach:

1. **User Model**: I defined a user model to represent the user details. The user model consists of key-value pairs where the keys represent the form field names and the values represent the user input. I used a `Map<String, dynamic>` to store the user data.

2. **JSON Conversion**: To persist and transfer the user data, I converted the user model to JSON format. This allowed me to easily serialize and deserialize the data.

3. **Dynamic Form Generation**: I created a dynamic form that generates form fields based on the keys of the user model. This allowed for flexibility and scalability when adding or removing form fields.

4. **State Management**: I managed the state of the form using Flutter's built-in state management techniques. Specifically, I used the `setState` method to update the form fields and reflect the changes in the UI. Additionally, I leveraged Flutter's form validation mechanisms to ensure data integrity.

## Flutter Knowledge

Throughout the development of this project, I utilized various concepts and features of the Flutter framework, including:

- Building UI using widgets and composing them to create complex layouts.
- Utilizing different types of input widgets to collect user data.
- Implementing form validation and error handling for user input.
- Navigating between screens and managing the widget tree.

https://github.com/EniolaAdeogun/vesti_user_form/assets/111467944/2aab8239-281d-4635-a6cf-8350fc2ba298


- Utilizing stateful widgets and managing state changes using `setState`.
- Utilizing Flutter packages and plugins to enhance functionality and productivity.

## State Management

For the state management in this project, I primarily used Flutter's built-in state management technique called `setState`. By using `setState`, I could efficiently update the form fields and trigger a UI rebuild when the state changed. Additionally, for more complex state management scenarios, I explored GetX, which provides more advanced features and scalability.

## Project Structure

The project follows a standard Flutter project structure, including:

- `lib` directory: Contains the Dart code for the application.
- `main.dart`: The entry point of the application.
- `models`: Contains the user model definition and JSON conversion methods.
- `screens`: Contains the screens and UI components of the application.










https://github.com/EniolaAdeogun/vesti_user_form/assets/111467944/3eea1b37-490f-4064-a074-5706a34216e5



