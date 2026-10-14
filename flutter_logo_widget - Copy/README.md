***Flutter Logo Widget***

A small Flutter project that shows a custom logo built entirely in code. The logo is a gradient circle with a crescent cut-out, drawn with CustomPaint, so no image files are needed.

***Features***
Custom logo widget called AppLogo
Adjustable size through one parameter
Drawn with Flutter's canvas (no assets)
Smooth blue and purple gradient using SweepGradient
Runs on Android emulator, Chrome, Edge and Windows
How It Works

The code is in lib/widgets/app_logo.dart and has two parts:

AppLogo: a StatelessWidget that returns a SizedBox containing a CustomPaint.
_LogoPainter: a CustomPainter that does the drawing in its paint method.

Drawing steps:

Find the center and radius of the available space.
Draw a full circle filled with a sweep gradient (blue, purple, blue).
Draw a smaller white circle, shifted to the right, on top. This leaves a crescent shape on the left.

shouldRepaint returns false because the logo never changes.

Note: the crescent is made with a white circle, so the logo looks right on a white background.

Usage

Import the widget:

dart
import 'widgets/app_logo.dart';

Use it anywhere in your widget tree:

dart
AppLogo(size: 150)

Example inside a screen:

dart
Scaffold(
  body: Center(
    child: AppLogo(size: 150),
  ),
)
Project Structure
flutter_logo_widget/
  lib/
    main.dart
    widgets/
      app_logo.dart
  pubspec.yaml
  README.md
Requirements
Flutter SDK installed and added to PATH
VS Code with the Flutter and Dart extensions (or Android Studio)
An Android emulator, or Chrome

Check your setup with:

flutter doctor
Run the App

Install dependencies:

flutter pub get

List available devices:

flutter devices

Run on the Android emulator:

flutter run -d emulator-5554

Or run in Chrome:

flutter run -d chrome

While the app is running, press r to hot reload and q to quit.

Troubleshooting
package:flutter/material.dart not found: open the project folder (the one with pubspec.yaml) in VS Code, then run flutter pub get.
Emulator not listed in flutter devices: wait until the emulator reaches the Android home screen, then check again.
First Android build is slow: this is normal because Gradle downloads files.
Possible Improvements
Add initials or an icon inside the logo
Animate the gradient
Replace the white inner circle with a true cut-out so it works on any background