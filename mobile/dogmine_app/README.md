# Dogmine Flutter App

## Project Description
Dogmine is a mobile application developed using Flutter. It provides a user-friendly platform for managing dog adoption and pet care information. The app allows users to browse available pets, learn about them, and connect with local shelters.

## Setup Instructions
1. **Clone the repository**:
   ```bash
   git clone https://github.com/vitvalihrach/Dogmine.git
   cd Dogmine/mobile/dogmine_app
   ```

2. **Install dependencies**:
   Make sure you have Flutter installed. Run:
   ```bash
   flutter pub get
   ```

3. **Run the app**:
   Use the following command to start the app:
   ```bash
   flutter run
   ```

## Architecture Overview
The Dogmine app is built using the Flutter framework and follows the Model-View-ViewModel (MVVM) architecture. This separation of concerns helps in promoting organized and maintainable code.

- **Model**: Represents the data structure, including classes for dog adoption listings, user information, etc.
- **View**: Consists of Flutter widgets that render the UI and respond to user interactions.
- **ViewModel**: Manages the business logic and serves as a bridge between the Model and the View. It responds to UI actions and updates the Model as needed.

In addition, the app uses the GetX library for state management, making the state reactive and ensuring a smooth user experience.

For further details, please refer to the official [Flutter documentation](https://flutter.dev/docs).