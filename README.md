**Project Type**

This app was developed in VSCode using Flutter, Dart, and an Android emulator. It's
also necessary to use Android Studio to help run the Android emulator while creating 
and/or testing this app.

**Description**

The app is called "DreamSky", with a tagline of "For when you need to space out". 

When the user clicks the button in the app, a random space image is shown (of 33 
possible). With each click, a new image appears. 

The app includes images downloaded from NASA's Flicker profile: 
https://www.flickr.com/photos/nasahubble/with/53435079630. According to NASA's Media
and Images Usage Guidelines, which can be found at 
https://www.nasa.gov/nasa-brand-center/images-and-media/,
the US public is not restricted by copyright if using the images for educational or
informational purposes. Since this app will never be commercialized, the use of the
images in the app seems to constitute fair usage.

While it would have also been possible to use `NetworkImage` to link to the images 
online, I opted to download the images to keep the assets local to the program. While 
this means it's necessary to include the additional folder in the project submission, 
it avoids the images unexpectedly disappearing from the internet or any lag in 
retrieving them.

**Project Requirements**

1. Create an interactive app using one of the following frameworks:
    - XCode using Swift
    - Android Studio using Kotlin
    - Flutter using Dart
2. Purpose/target of the app: developer's choice.
3. The app must include user interaction, such as a button.
4. Assessment to be made based on effectiveness of the interaction.
5. All necessary files to run the app must be submitted.

**Instructions to start the app and Android emulator.**

To run the app, use the terminal to cd into the `dreamsky` folder, then either use the 
command `flutter run` or, in VSCode, right click on the `main.dart` file found in the 
`lib` folder and choose "Run without Debugging".

>> In VSCode, on the bottom bar (where you can find things like Prettier, Go Live, etc),
if no emulator device shows on that bar, click on it to open the device selection pane,
which will show at the top of the window.

>> Choose Android Emulator - Medium Phone API 35 or another, similar Android emulator.

>> In Android Studio, it may be necessary to open the Device Manager, choose the device,
click on the 3 dots to the right, then choose Wipe Data to create a clean device.

>> It may take some time for the build to compile, but the clean Android Emulator should 
start and display the app built in Flutter.

>> An mp4 video of the app is included in this submission. It shows that on click of the 
button, the images will randomly change. The screen capture was made using Camtasia 2024.

**Author**
&copy; 2025 Marki Lyons 

**Video Demo**
[View a demo of the project on YouTube](https://youtu.be/5HLBGb5Tq2A) 

**Resources & Inspiration**

Flutter Codelab: Write your first Flutter app
https://docs.flutter.dev/get-started/codelab

Video: Building your first Flutter app
https://www.youtube.com/watch?v=8sAyPDLorek

Video: Flutter Basic Training - 12 Minute Bootcamp
https://www.youtube.com/watch?v=1xipg02Wu8s

Video: Flutter Basics by a REAL Project
https://www.youtube.com/watch?v=D4nhaszNW4o

Video: How to Run Flutter App in VSCode Android Emulator on Windows 10 or 11 (2023)
https://www.youtube.com/watch?v=EhGW4UYpKSE

Video: Flutter tutorial: How to switch image on click
https://www.youtube.com/watch?v=9w2F7iZSyGs

Video: Add Images to Your App (TWO METHODS) - Flutter Friday
https://www.youtube.com/watch?v=mON4IupMyfo&list=PLCC34OHNcOtpx9qCZNv-NbIT1Gx3BAOku&index=6

Article: Flutter Tutorial – How to Develop an App with Flutter From Scratch
https://www.freecodecamp.org/news/how-to-develop-a-flutter-app-from-scratch/

Article: Flutter Background changer App
https://medium.com/@drealtic.com/flutter-background-changer-app-bd03ec74325c

Documentation: Flutter
https://docs.flutter.dev

Documentation: Flutter Material Library
https://api.flutter.dev/flutter/material/material-library.html
