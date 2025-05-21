# CareSense Medical Mobile Application
> Precision Care, Anytime You Need

[![Flutter](https://img.shields.io/badge/Framework-Flutter-02569B?logo=flutter&logoColor=white)](https://flutter.dev/)  
[![Dart](https://img.shields.io/badge/Language-Dart-0175C2?logo=dart&logoColor=white)](https://dart.dev/)  
[![Firebase](https://img.shields.io/badge/Database-Firebase-FFCA28?logo=firebase&logoColor=black)](https://firebase.google.com/)  
[![SQLite](https://img.shields.io/badge/Database-SQLite-003B57?logo=sqlite&logoColor=white)](https://www.sqlite.org/)  
[![Pinecone](https://img.shields.io/badge/VectorDB-Pinecone-9B51E0?logoColor=white)](https://www.pinecone.io/)  
[![Groq API](https://img.shields.io/badge/API-Groq-00B0FF?logo=postman&logoColor=white)](https://groq.dev/)  

---

## 🚀 Project Overview
**CareSense** is a cross-platform mobile app built with **Flutter** and **Dart** to deliver digital medical services. The app offers:
- **AI-powered Chatbot** for instant health advice  
- **Medicine catalog** by disease category  
- **Pharmacy & Hospital locators** with maps  
- **User Authentication** (register & login)  
- Secure data via **Firebase** & **SQLite**

Designed to help users find reliable health information and care options in just a few taps.

---

## 📋 Table of Contents
1. [Features](#-features)  
2. [Tech Stack](#-tech-stack)  
3. [Getting Started](#-getting-started)  
   - [Prerequisites](#prerequisites)  
   - [Installation](#installation)  
   - [Running the App](#running-the-app)  
4. [App Workflow](#-app-workflow)  
5. [Project Structure](#-project-structure)  
6. [Screenshots](#-screenshots)  
7. [Contributors](#-contributors)  
8. [License](#-license)  

---

## ✨ Features
- **ChatBot**  
  - AI chatbot powered by **Groq API**  
  - Knowledge base stored in **Pinecone**  
- **Medicine List**  
  - Browse drugs by disease category  
  - View name, description, price  
- **Pharmacy Locator**  
  - Search pharmacies by city  
  - View address, image, Google Maps link  
- **Hospital Information**  
  - Search hospitals by city  
  - View address, image, Google Maps link  
- **User Authentication**  
  - Register (name, email, password, profile photo)  
  - Login via **Firebase Auth**  
  - Profile photos stored in **SQLite**

---

## 🛠️ Tech Stack
| Component            | Technology       |
|----------------------|------------------|
| **Language**         | Dart             |
| **Framework**        | Flutter          |
| **Authentication**   | Firebase Auth    |
| **Real-time DB**     | Firebase         |
| **Local Storage**    | SQLite           |
| **Vector Search DB** | Pinecone         |
| **AI API**           | Groq API         |

---

## 🔄 App Workflow

1. **Launch App**  
   - User opens the app and is redirected to the **Login** screen.  
2. **User Registration** (first-time users)  
   - Fill in name, email, password, and optionally upload a profile photo.  
3. **Login**  
   - Authenticate via Firebase Auth and land on the **Home** screen.  
4. **Home Navigation**  
   - **Medicine** → Browse drugs by disease category  
   - **Pharmacy Locator** → Find nearby pharmacies with map links  
   - **Hospital Directory** → Search hospitals with address and map  
   - **Chatbot** → Consult the AI-powered health assistant  

---

## 📁 Project Structure

```bash
lib/
├── models/              # Definisi class model data (Medicine, User, dsb.)
├── services/            # API & auth service (api_service.dart, auth_service.dart)
├── pages/               # Halaman utama aplikasi
│   ├── home_page.dart
│   ├── login_page.dart
│   ├── register_page.dart
│   ├── medicine_page.dart
│   ├── apotek_page.dart
│   ├── hospital_page.dart
│   └── chatbox_page.dart
├── widgets/             # Widget reusable (custom button, card, dsb.)
└── main.dart            # Entry point aplikasi

assets/
├── images/              # Gambar & ikon
└── fonts/               # File font kustom

config/
├── firebase_options.dart  # Konfigurasi Firebase
└── env.dart               # Variabel lingkungan (API keys, dsb.)

---

## 📄 License
Distributed under the MIT License. See LICENSE for details.
