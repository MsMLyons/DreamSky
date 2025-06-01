// Course: Advanced Programming Concepts
// Student: Marki Lyons
// Term: Fall 2
// Module 7: Project 6

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DreamSky',
      theme: ThemeData(
        // This is the theme of the application.        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1A237E)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'DreamSky'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // List of images to display on button click
  final List<String> images = [
    'images/BatShadow.jpg',
    'images/BlueGlobularCluster.jpg',
    'images/BlueOpenCluster.jpg',
    'images/Caldwell_69.jpg',
    'images/Caldwell_96_1.jpg',
    'images/Caldwell_96.jpg',
    'images/CarinaNebula.jpg',
    'images/CelestialCloudScape.jpg',
    'images/CelestialFire.jpg',
    'images/DazzlingStarCluster.jpg',
    'images/DustyStellarNursery.jpg',
    'images/EnigmaticStarCluster.jpg',
    'images/FlameNebula.jpg',
    'images/Herbig_Haro_45_RunningManRegion.jpg',
    'images/LostGalaxyPinwheel.jpg',
    'images/M17.jpg',
    'images/M67.jpg',
    'images/MergingQuazars.jpg',
    'images/MiniJet.jpg',
    'images/MysticMountain.jpg',
    'images/NebulaNGC1333.jpg',
    'images/PrawnNebula.jpg',
    'images/QuazarOutflows.jpg',
    'images/RedGlobularCluster.jpg',
    'images/RedHyperGiantStar.jpg',
    'images/ShowManNebula.jpg',
    'images/SpeedyStarJets.jpg',
    'images/StarBirth.jpg',
    'images/StarDawn.jpg',
    'images/StarFormingRegion.jpg',
    'images/StellarJet.jpg',
    'images/SuperNovaBlast.jpg',
    'images/TangledWeb.jpg',
  ];
  
  // Initialize index of the current image
  int currentIndex = 0;
  
  // Function to update the displayed image
  void changeImage() {    
    setState(() {
      currentIndex = (currentIndex + 1) % images.length;
        // This call to setState tells the Flutter framework that something has
        // changed in this State, which causes it to rerun the build method below
        // so that the display can reflect the updated values. 
    });
  }  

  // Builds the app on the screen, including UX/UI components as widgets
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _changeImage method above.    
    return Scaffold(
      appBar: AppBar(
        // Bar found at top of the app
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Center(
          child: Text(widget.title),
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                images[currentIndex],
              ),
            ),
            const Text('For when you need to space out',
                style: TextStyle(
                  color: Color.fromARGB(239, 255, 255, 255),
                  fontSize: 20.0,
                )),
            const Text(
              'Images courtesy of NASA',              
              style: TextStyle(
                color: Color.fromARGB(239, 255, 255, 255),
                fontSize: 16.0,
              )),
          ],
        ),
      ),
      backgroundColor: const Color(0xFF1A237E),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        onPressed: changeImage,        
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}