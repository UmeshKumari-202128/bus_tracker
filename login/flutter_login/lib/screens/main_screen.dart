import 'package:flutter/material.dart';
import 'package:flutter_login/screens/login_screen.dart';
// import 'package:flutter_login/screens/main_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
  final DriverLogin = Material(
    elevation: 5,
    borderRadius: BorderRadius.circular(30),
    color: Color.fromARGB(255, 224, 193, 39),
    child: MaterialButton(
      padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
      },
      child: Text(
        "Driver Login",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
  );

  final UserLogin = Material(
    elevation: 5,
    borderRadius: BorderRadius.circular(30),
    color: Color.fromARGB(255, 224, 193, 39),
    child: MaterialButton(
      padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
      onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
     
      },
      child: Text(
        "User Login",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
  );

  
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                      height: 200,
                      child: Image.asset(
                        "assets/busLogo.png",
                        fit: BoxFit.contain,
                      )),
                  SizedBox(
                    height: 80,
                  ),
                  Wrap(
                    spacing: 25,
                    children: <Widget>[
                      DriverLogin,
                      UserLogin,
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
