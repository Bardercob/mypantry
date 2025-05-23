
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:my_pantry/pantry.dart';
import 'package:my_pantry/sign_up.dart';
import 'package:my_pantry/sign_in.dart';
import 'package:my_pantry/welcome.dart';
import 'package:my_pantry/shopping.dart';



void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyPantryApp());
}

class MyPantryApp extends StatelessWidget {
const MyPantryApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      title: 'My Pantry',
      // Start the app with the "/" named route.
      // The app starts
      // on the Welcome page.
      initialRoute: '/',
      routes: {
        '/': (context) => const Welcome(),
        '/sign in': (context) => const SignInPage(),
        '/sign up': (context) => const SignUpPage(),
        '/pantry': (context) => const PantryPage(),
        '/shopping': (context) => const ShoppingListPage(),
      },
    );
  }
}
