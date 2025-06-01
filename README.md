# 📚 Bookly App

Bookly is a Flutter-powered mobile app that allows users to **explore**, **search**, and **read free books** using the **Google Books API**. The app is built using **Clean Architecture** and showcases professional development practices like **MVVM**, **state management**, and **dependency injection**.

> 🎓 Originally developed as part of the [Clean Architecture in Flutter (Arabic)](https://www.udemy.com/share/108tfg3@RxttKTRbA9uqV-3deoOHGmA9PU5XWyqOTRyFWFJF93o2cxttRE-f5MdGE9aIpqeLXw==/) course by [Tharwat Samy](https://www.udemy.com/user/tharwat-samy).

---

## ✨ Features

- 🔍 **Search and Filter Books** via Google Books API
- 🧱 **MVVM + Clean Architecture** for scalable structure
- ⚡ **Smooth UX** with nested scroll and reactive UI
- 💾 **Local Caching** of book data using Hive
- 💡 **Dependency Injection** via GetIt
- 🌐 **Open Book Links** in browser
- 📱 **Responsive UI** for all devices

---

## 📸 Screenshots

| Home Page | Book Details |
|-----------|--------------|
| ![Home Screen](https://github.com/MohameHassan139/booklyapp/blob/main/assets/home_page.png) | ![Details Screen](https://github.com/MohameHassan139/booklyapp/blob/main/assets/details_book.png) |

---

## 🛠️ Built With

- **Flutter** – UI Toolkit for crafting native apps
- **Dart** – Programming language used with Flutter
- **Google Books API** – Fetch and search for book data

---

## 🧩 Packages Used

| Package | Purpose |
|--------|---------|
| [`cached_network_image`](https://pub.dev/packages/cached_network_image) | Efficient image loading & caching |
| [`dartz`](https://pub.dev/packages/dartz) | Functional programming constructs |
| [`dio`](https://pub.dev/packages/dio) | HTTP client for RESTful APIs |
| [`equatable`](https://pub.dev/packages/equatable) | Value equality for Dart objects |
| [`flutter_bloc`](https://pub.dev/packages/flutter_bloc) | State management using BLoC pattern |
| [`font_awesome_flutter`](https://pub.dev/packages/font_awesome_flutter) | Font Awesome icons |
| [`get_it`](https://pub.dev/packages/get_it) | Service locator for dependency injection |
| [`go_router`](https://pub.dev/packages/go_router) | Declarative navigation |
| [`google_fonts`](https://pub.dev/packages/google_fonts) | Custom fonts |
| [`hive`](https://pub.dev/packages/hive) | Lightweight key-value database |
| [`hive_flutter`](https://pub.dev/packages/hive_flutter) | Hive bindings for Flutter |
| [`url_launcher`](https://pub.dev/packages/url_launcher) | Launch URLs in a browser |

---

## 🧠 Learning Outcomes

By building this app, I have gained experience in:

- 🔄 Implementing Clean Architecture in real-world projects
- 📂 Structuring code using Presentation, Domain, and Data layers
- ⚙️ Using `get_it` for dependency injection
- 🔧 Managing state with `flutter_bloc`
- 📊 Debugging and optimizing Flutter apps

---

## 🎓 Course Details

- **Course**: [Clean Architecture in Flutter (Arabic)](https://www.udemy.com/share/108tfg3@RxttKTRbA9uqV-3deoOHGmA9PU5XWyqOTRyFWFJF93o2cxttRE-f5MdGE9aIpqeLXw==/)
- **Instructor**: [Tharwat Samy](https://www.udemy.com/user/tharwat-samy)
- **Certificate**: [View Certificate](https://www.udemy.com/certificate/UC-63fbd22a-99d6-47fc-85ff-8d56040d2a57/)
- **Student**: Mohamed Hassan

---

## 🚀 Getting Started

### ✅ Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Dart SDK (comes with Flutter)
- Code editor (e.g. VS Code or Android Studio)

### 🧰 Installation

```bash
# 1. Clone the repository
git clone https://github.com/MohameHassan139/bookly.git

# 2. Navigate into the directory
cd bookly

# 3. Get the dependencies
flutter pub get

# 4. Run the app
flutter run
