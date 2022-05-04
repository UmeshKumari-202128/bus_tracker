import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/screens/login_screen.dart';
import 'package:flutter_login/screens/main_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyAfQvyolpTMC28ab-9hAwKioqWd4eEIE4M",
      appId: "1:460365764335:android:55817a8c2dfe5bcf4fad1a",
      messagingSenderId: "460365764335",
      projectId: "emailpasswordauth-170b7",
  ));
  runApp(MyApp());
}

// void main() async  {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(

//   );
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Email and Password Login',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
