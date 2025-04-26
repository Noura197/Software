This project is a SwiftUI application called ETHNOBOT that allows users to create an account, log in, and explore Ethnobot's features. It supports three types of accounts: Personal, Family, and Teacher.
Project Structure:
1. ETHNOBOTApp.swift
 Purpose: The app's entry point.
 Key Functionality: Loads the ContentView() when the app launches.
2. ContentView.swift
   Purpose: Main screen for selecting an account type and navigating to login.
   Key Functionality:
      - Displays three account type buttons: Personal, Family, and Teacher.
      - Navigates to LoginView depending on the user's choice.
3. LoginView.swift
   Purpose: Login screen for users.
   Key Functionality:
       - Allows users to log in using email and password.
       - Navigates to the appropriate HomeView after successful login.
       - Includes an option to open CreateAccountView if users don't have an account.
4. CreateAccountView.swift
   Purpose: Screen for creating a new account.
   Key Functionality:
       - Collects user name, email, password, and confirm password.
       - Saves email and password locally using UserDefaults.
5. HomeView.swift
   Purpose: Displays the user's home screen after login.
   Key Functionality:
       - Welcomes the user based on the selected account type.
       - Provides a button to explore Ethnobot features.
       - Includes a logout button to return to the login screen.
6. ExploreView.swift
   Purpose: Main interactive area where users can ask Ethnobot questions.
   Key Functionality:
       - Users can type a question and receive a sample response.
       - Users can rate the bot's responses with a 1-5 star system.

Features Summary

1. User Registration (with validation)

2. User Login 

3. Account Type Selection (Personal, Family, Teacher)

4. Explore Ethnobot (ask questions, get responses)

5. Rate responses
