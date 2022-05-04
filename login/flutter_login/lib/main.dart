import "package:flutter/material.dart";
import "package:flutter_map/flutter_map.dart";
import 'package:google_maps_flutter_tutorial/screens/google_maps_screen.dart';
import "package:latlong2/latlong.dart";
import "package:http/http.dart";
import "dart:convert" as convert;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Google Map Demo',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GoogleMapScreen(),
            )),
        tooltip: 'Google Map',
        child: Icon(Icons.pin_drop_outlined),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   MyHomePage createState() => _MyHomePageState(); 
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter= 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++ ;
//     });

//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//       title: Text(widget.title),
//       ),
//         body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//               Text(
//                 '$_counter',
//                 style: Theme.of(context).textTheme.headline4,
//               ),
//               ],
//             ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed:_incrementCounter,
//           tooltip: 'Increment',
//           child: Icon(Icon.add),
//         ),
          
//         );
//   }
// }
     
