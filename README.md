# 🔐 Flutter SharedPreferences Demo

A simple Flutter application built to practice **local data persistence using SharedPreferences**.

This project demonstrates how a Flutter app can store and retrieve small pieces of data locally, such as login status, user preferences, and application state.

---

## 📱 Project Overview

The app demonstrates a basic authentication flow using `SharedPreferences`.

When the user logs in:

* Login status is stored locally.
* The app remembers the user after restarting.
* A splash/loading screen checks the saved login state.
* The user can log out, which clears the stored login state.

This project was created as part of my **Flutter development practice** to understand local storage and application state persistence.

---

## ✨ Features

* 🔐 Simple Login Flow
* 💾 Local data storage with SharedPreferences
* 🔄 Persistent Login State
* 🚀 Splash/Loading Screen
* 🚪 Logout functionality
* 📱 Responsive Flutter UI
* 🧩 Separate screens for better code organization

---

## 🛠️ Tech Stack

| Technology        | Usage                   |
| ----------------- | ----------------------- |
| Flutter           | Application development |
| Dart              | Programming language    |
| SharedPreferences | Local data persistence  |
| Material UI       | User interface          |
| Git & GitHub      | Version control         |

---

## 🧠 What I Practiced

Through this project, I practiced:

* Working with Flutter `StatefulWidget`
* Managing application state
* Using `SharedPreferences`
* Saving and retrieving Boolean/String values
* Handling asynchronous operations
* Navigation between screens
* Login/logout flow
* Organizing Flutter project files
* Debugging Flutter applications
* Using Git for version control

---

## 🔄 App Flow

```text
                ┌───────────────┐
                │  App Launch   │
                └───────┬───────┘
                        │
                        ▼
                ┌───────────────┐
                │ Check Login   │
                │     State     │
                └───────┬───────┘
                        │
             ┌──────────┴──────────┐
             │                     │
          Logged In             Logged Out
             │                     │
             ▼                     ▼
      ┌─────────────┐       ┌─────────────┐
      │  Home Page  │       │ Login Page  │
      └──────┬──────┘       └──────┬──────┘
             │                     │
             │ Logout              │ Login
             ▼                     ▼
      ┌─────────────┐       Save Login State
      │ Login Page  │              │
      └─────────────┘              ▼
                             ┌─────────────┐
                             │  Home Page  │
                             └─────────────┘
```

---

## 📸 Screenshots

### 🔑 Login Screen

*Add your login screen screenshot here.*

```text
screenshots/login_screen.png
```

### ⏳ Loading / Splash Screen

*Add your splash/loading screenshot here.*

```text
screenshots/splash_screen.png
```

### 🏠 Home Screen

*Add your home screen screenshot here.*

```text
screenshots/home_screen.png
```

### 🚪 Logout Flow

*Add your logout-related screenshot here.*

```text
screenshots/logout.png
```

---

## 📂 Project Structure

```text
lib/
│
├── main.dart
├── FlashPage.dart
├── LoginPage.dart
└── HomePage.dart
│
├── assets/
└── screenshots/
```

> File names may differ depending on the current project structure.

---

## ▶️ Getting Started

### 1. Clone the repository

```bash
git clone <your-repository-url>
```

### 2. Open the project

```bash
cd <project-folder>
```

### 3. Get dependencies

```bash
flutter pub get
```

### 4. Run the application

```bash
flutter run
```

---

## 📦 Main Dependency

```yaml
dependencies:
  shared_preferences: ^latest
```

The `shared_preferences` package is used to persist lightweight key-value data locally on the device.

---

## 💡 Example

Saving login state:

```dart
final prefs = await SharedPreferences.getInstance();

await prefs.setBool('isLogin', true);
```

Reading login state:

```dart
final prefs = await SharedPreferences.getInstance();

bool isLogin = prefs.getBool('isLogin') ?? false;
```

Clearing login state:

```dart
final prefs = await SharedPreferences.getInstance();

await prefs.setBool('isLogin', false);
```

---

## 🎯 Learning Goal

The main goal of this project was to understand how Flutter applications can **persist lightweight user preferences and application state locally**.

This project also helped me strengthen my understanding of:

**Flutter → Dart → State Management → Local Storage → Navigation → Git**

---

## 👨‍💻 Developer

**Ashish**

Computer Engineering Student | Flutter & Java Developer

Interested in building practical applications and continuously improving my software development skills.

---

⭐ If you find this project useful, consider giving it a star!

