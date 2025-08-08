# OnTrak 

**OnTrak** is a simple and intuitive to-do list app built with SwiftUI and Firebase, designed to help users stay focused and productive. It supports user authentication and personalized task storage, making it easy to track what matters.

---

## Features

- Register, login, and logout functionality
- Create and manage a flat list of to-do items
- Mark tasks as complete/incomplete
- Tasks support dates (no current functionality)
- Secure, personalized data storage via Firebase
- Data tied to authenticated user accounts
- User info stored: Name, Email, Account Creation Date
- Built using SwiftUI and Firebase (Auth + Firestore)

---

## Tech Stack

- **Language:** Swift (SwiftUI)
- **Backend:** Firebase
  - Firebase Authentication
  - Cloud Firestore

---

## Getting Started

To run the app locally:

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/OnTrak.git
   ```
2. Open the project in **Xcode**.
3. Install necessary dependencies (via Swift Package Manager or CocoaPods if applicable).
4. Configure Firebase:
   - Add your `GoogleService-Info.plist` to the project.
   - Ensure Firebase project is set up with Authentication and Firestore enabled.
5. Build and run the app on an iOS Simulator or physical device.

---

## Roadmap

Potential features for future development:

- Support for multiple to-do lists
- Push notifications and reminders
- Enhanced profile customization
- Due date logic and sorting
- Dark mode optimization

---

## Motivation

I created OnTrak following a tutorial in order to learn more about SwiftUI, Xcode, Firebase, and IOS development in general. I would love to continue work on this project, specifically with notifcation handling so the user can complete lists of tasks utilizing either lock screen notifications or a widget without ever having to unlock the device.

---
## Acknowledgements

This project was inspired by the following tutorial: https://www.youtube.com/watch?v=K-4blUReYoU&list=PL5PR3UyfTWvei-pKlZN7d8r-0tHCK1EKE

---

- Nathan LaBar  
- [GitHub Profile](https://github.com/SmallFace21) 

---
